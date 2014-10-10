# Description:
#   It's a puppet!

randomBetween = require('../lib/random').randomBetween

module.exports = (robot) ->
  robot.hear /\bpuppet\b/i, (msg) ->
    if randomBetween(1, 4) == 1
      msg.send 'http://i.imgur.com/x3Qz9PW.jpg'
