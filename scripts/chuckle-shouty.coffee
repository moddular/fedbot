# Description:
#   Chuckle-Shouty
#
# Commands:
#   None
#

randomBetween = require('../lib/random').randomBetween

module.exports = (robot) ->

  responses = [
    'http://statics.cribeo.com/m/751f/6541_13303_b2ac30de56c6298420502a0_400_295.gif'
  ]

  robot.hear /\b(chuckle|shouty)\b/i, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send msg.random responses
