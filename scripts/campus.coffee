# Description:
#   Campus...

randomBetween = require('../lib/random').randomBetween

module.exports = (robot) ->
  robot.hear /\bcampus( digital|\.macmillan)\b/i, (msg) ->
    if randomBetween(1, 3) is 1
      msg.send 'http://i.imgur.com/oMBWa7L.gif'
