# Description:
#   Ice cream, anybody?
#
# Commands:
#   None
#

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->

  images = [
    'http://i.imgur.com/wyMiAsh.png'
    'http://i.imgur.com/lWCvLtU.png'
  ]

  robot.hear /\bice[\s\-]?cream\b/i, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send msg.random images
