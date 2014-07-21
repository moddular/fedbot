# Description:
#   Lynne, these are sex people!
#
# Commands:
#   None
#

module.exports = (robot) ->

  robot.hear /\b(sex)\b/i, (msg) ->
    msg.send 'http://i42.tinypic.com/2e4x53o.gif'
