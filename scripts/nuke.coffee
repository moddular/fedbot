# Description:
#   00000000
#
# Commands:
#   None
#

module.exports = (robot) ->

  robot.hear /(^|\s)00000000(\s|$)/i, (msg) ->
    msg.send "http://static4.fjcdn.com/thumbnails/comments/3265468+_f1d1c9fdc08b60f35fc3dabc72305aed.gif"
