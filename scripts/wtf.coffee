# Description:
#   What the fuck?
#
# Commands:
#   None
#

module.exports = (robot) ->

  responses = [
    "http://i.imgur.com/pKJyCWG.gif",
    "http://www.reactiongifs.com/wp-content/uploads/2013/06/what-the-f-tom-delonge.gif"
  ]

  robot.hear /\b(wtf|what the (fuck|flip|frig|f\*\*(\*|k)|f))\b/i, (msg) ->
    msg.send msg.random responses
