# Description:
#   What the fuck?
#
# Commands:
#   None
#

module.exports = (robot) ->

  responses = [
    "http://i.imgur.com/pKJyCWG.gif"
  ]

  robot.hear /\b(wtf|what the (fuck|flip|frig|f\*\*\*|f))\b/i, (msg) ->
    msg.send msg.random responses
