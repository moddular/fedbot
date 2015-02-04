# Description:
#   Who's Charles?
#
# Commands:
#   None
#

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->

  responses = [
    'Who\'s Charles?'
    'Who the hell is Charles?'
    'Who is Charles?'
    'But who *is* Charles?'
    'Remind me who Charles is, again'
    'I\'m not sure who Charles is'
    'Yes, but does anybody know who Charles is?'
  ]

  robot.hear /\bcharles\b/i, (msg) ->
    if randomBetween(1, 10) is 1
      msg.send msg.random responses
