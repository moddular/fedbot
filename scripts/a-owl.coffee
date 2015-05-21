# Description:
#   A Owl
#   A Owl?
#   A Owl
#
# Commands:
#   None
#

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->

  robot.hear /\ba (owl|hour)(\?)?/i, (msg) ->
    if randomBetween(1, 3) is 1
      word = msg.match[1]
      isQuestion = !!msg.match[2]
      if isQuestion
        msg.send "a #{word}"
      else
        msg.send "a #{word}?"
