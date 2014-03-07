# Description:
#   Get all your FED images
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot fed me - Get a random FED image
#   hubot fed bomb N - Get N random fed images
#
# Author:
#   rowanmanning

module.exports = (robot) ->

  robot.respond /fed me/i, (msg) ->
    msg.http("http://fedme.rowanmanning.com/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).fed

  robot.respond /fed bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    msg.http("http://fedme.rowanmanning.com/bomb?count=" + count)
      .get() (err, res, body) ->
        msg.send fed for fed in JSON.parse(body).feds

  robot.respond /how many feds?/i, (msg) ->
    msg.http("http://fedme.rowanmanning.com/count")
      .get() (err, res, body) ->
        msg.send "There are #{JSON.parse(body).fed_count} feds."

  # extras
  
  robot.hear /\bfried eggs?\b/i, (msg) ->
    msg.send "http://i.imgur.com/34Qq17u.jpg"

  robot.hear /\bcheese\b/i, (msg) ->
    msg.send "http://i.imgur.com/nkQyVr4.gif"

  robot.hear /\bbunn(y|ies)\b/i, (msg) ->
    if /\bjose\b/i.test msg.message.text
      msg.send "http://i.imgur.com/Tcymylr.jpg"

  robot.hear /\b(jude?oge|jude doge|tramadol)\b/i, (msg) ->
    msg.send "http://i.imgur.com/5Y3vocd.png"

  robot.hear /\bh[au]ng\s?over\b/i, (msg) ->
    msg.send "http://i.imgur.com/fzpsMDJ.jpg"

  robot.hear /\b(12|twelve)\s?pints?\b/i, (msg) ->
    msg.send "http://i.imgur.com/8DrBegi.jpg"
