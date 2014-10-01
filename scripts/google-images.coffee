# Description:
#   A way to interact with the Google Images API.
#
# Commands:
#   hubot image me <query> - The Original. Queries Google Images for <query> and returns a random top result.
#   hubot nature me <query> - Queries Google Images for <query> with the filter site:nature.com and returns a random top result.
#   hubot animate me <query> - The same thing as `image me`, except adds a few parameters to try to return an animated GIF instead.
#   hubot mustache me <url> - Adds a mustache to the specified URL.
#   hubot mustache me <query> - Searches Google Images for the specified query and mustaches it.
#   hubot benny hill me <url> - Adds Benny Hill music to the specified URL.
#   hubot benny hill me <query> - Searches Google Images for the specified query and Benny Hill's it.

# substitution queries
wholesome = [
  "unicorns",
  "kittens",
  "puppies",
  "\"shetland pony\"",
  "\"my little pony\"",
  "\"sylvanian families\"",
  "\"daniel o'donnell\"",
  "teletubbies",
  "\"beautiful rainbows\"",
  "\"the sound of music julie andrews\"",
  "\"hello kitty\"",
  "\"care bears\"",
  "\"successories motivational poster\"",
  "\"inspirational quotes\"",
  "\"daily affirmation\"",
  "\"daily squee\"",
  "\"mary whitehouse\"",
  "\"code of conduct\""
]

naughty_step = [
  "Jude",
  "Jack Watkins"
]

module.exports = (robot) ->
  robot.respond /(image|img)( me)? (.*)/i, (msg) ->
    query = msg.match[3]

    ## get today's animal from the brain
    if msg.message.match /(animal of the day|aotd)/i
      query = robot.brain.data.animalOfTheDay

    imageMe msg, query, (url) ->
      msg.send url

  robot.respond /nature( me)? (.*)/i, (msg) ->
    query = msg.match[2]
    imageMe msg, query, false, false, true, (url) ->
      msg.send url

  robot.respond /animate( me)? (.*)/i, (msg) ->
    query = msg.match[2]
    imageMe msg, query, true, (url) ->
      msg.send url

  robot.respond /(?:mo?u)?sta(?:s|c)he?(?: me)? (.*)/i, (msg) ->
    type = Math.floor(Math.random() * 3)
    mustachify = "http://mustachify.me/#{type}?src="
    imagery = msg.match[1]

    if imagery.match /^https?:\/\//i
      msg.send "#{mustachify}#{imagery}"
    else
      imageMe msg, imagery, false, true, (url) ->
        msg.send "#{mustachify}#{url}"

  robot.respond /benny\s?hill me (.*)/i, (msg) ->
    imagery = msg.match[1]
    if imagery.match /^https?:\/\//i
      msg.send getBennyHillUrl(imagery)
    else
      imageMe msg, imagery, true, false, (url) ->
        msg.send getBennyHillUrl(url)

imageMe = (msg, query, animated, faces, nature, cb) ->
  cb = animated if typeof animated == 'function'
  cb = faces if typeof faces == 'function'
  cb = nature if typeof nature == 'function'
  actual_query = if (msg.message.user.name in naughty_step) then msg.random wholesome else query
  q = v: '1.0', rsz: '8', q: actual_query, safe: 'active'
  q.imgtype = 'animated' if typeof animated is 'boolean' and animated is true
  q.imgtype = 'face' if typeof faces is 'boolean' and faces is true
  q.as_sitesearch = 'nature.com' if typeof nature is 'boolean' and nature is true
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(q)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData?.results
      if images?.length > 0
        image  = msg.random images
        cb "#{image.unescapedUrl}#.png"

getBennyHillUrl = (gif) ->
  gif = encodeURIComponent gif
  "http://bennyhill.me/?gif=#{gif}&-="
