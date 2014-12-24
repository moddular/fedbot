# Description:
# Jude as the Rock

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /\bstyle\b/i, (msg) ->
    if randomBetween(1, 2) == 1
      msg.send 'http://i.imgur.com/dRExKmp.jpg'
