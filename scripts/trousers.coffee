# Description:
#   Where are Glynn's trousers?
#
# Commands:
#   None
#

module.exports = (robot) ->

  robot.hear /\b(trousers|pants)\b/i, (msg) ->
    msg.send "Where are your #{msg.match[1]}, Glynn?"
