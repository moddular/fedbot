# Description:
#   The brown nose award
#
# Commands:
#   None
#

module.exports = (robot) ->

  image = "http://kil.gr/sandbox/secret/fedbot/brown-nose.jpg"

  robot.hear /brown nose|brownnose/i, (msg) ->
    msg.send image
