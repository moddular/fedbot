# Description:
#   Carousels for all
#
# Commands:
#   None
#

module.exports = (robot) ->
  robot.hear /carousel/i, (msg) ->
    msg.send "http://stream1.gifsoup.com/view7/2623190/magic-roundabout-o.gif"
