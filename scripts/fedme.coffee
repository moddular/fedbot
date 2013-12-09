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
