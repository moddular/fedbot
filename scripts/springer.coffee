# Description:
#   Springer?

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /\bspringer\b/i, (msg) ->
    if randomBetween(1, 3) is 1
      msg.send 'http://i.imgur.com/WvoQllJ.png'
