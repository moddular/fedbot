# Description:
#   It's a puppet!

module.exports = (robot) ->
  robot.hear /\bpuppet\b/i, (msg) ->
    msg.send 'http://i.imgur.com/x3Qz9PW.jpg'