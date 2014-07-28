# Description:
#   Chuckle-Shouty
#
# Commands:
#   None
#

randomBetween = require('../lib/random').randomBetween

module.exports = (robot) ->

  images = [
    'http://statics.cribeo.com/m/751f/6541_13303_b2ac30de56c6298420502a0_400_295.gif'
    'http://makeameme.org/media/created/the-sound-of-8ptjf0.jpg'
  ]

  robot.hear /\b(chuckle|shouty)\b/i, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send msg.random images
