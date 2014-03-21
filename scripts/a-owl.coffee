# Description:
#   A Owl
#   A Owl?
#   A Owl
#
# Commands:
#   None
#

module.exports = (robot) ->

  robot.hear /\ba (owl|hour)(\?)?/i, (msg) ->
    word = msg.match[1]
    isQuestion = !!msg.match[2]
    if isQuestion
      msg.send "a #{word}"
    else
      msg.send "a #{word}?"
