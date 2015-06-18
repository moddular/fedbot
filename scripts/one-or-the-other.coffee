# Description:
#   One or the other
#
# Commands:
#   name Andrew or Phil without the surname and fedbot will ask who are you talking about

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->

  robot.hear /andrew\b(?!w|m)/i, (msg) ->
    if randomBetween(1, 10) is 1
      msg.send 'Mee or Walker?'

  robot.hear /phil\b(?!b|c)/i, (msg) ->
    if randomBetween(1, 10) is 1
      msg.send 'Booth or Cowans?'
