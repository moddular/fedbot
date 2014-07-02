# Description:
#   The brown nose award
#
# Commands:
#   None
#

module.exports = (robot) ->

  image = "http://i.imgur.com/FwAW71D.jpg"

  robot.hear /brown[\s\-]?nos(e|er|ing)/i, (msg) ->
    msg.send image
