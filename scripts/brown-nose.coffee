# Description:
#   The brown nose award
#
# Commands:
#   None
#

module.exports = (robot) ->

  image = "http://kil.gr/sandbox/secret/fedbot/brown-nose.jpg"

  robot.hear /brown[\s\-]?nos(e|er|ing)/i, (msg) ->
    msg.send image
