# Description:
#   Wordpress
#
# Commands:
#   None
#

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->

  quotes = [
    'Where\'s your team, Glynn?'
    'Where are your teammates, Glynn?'
    'Are your teammates late again for a meeting, Glynn?'
  ]

  robot.hear /\bwordpress\b/i, (msg) ->
    if randomBetween(1, 10) is 1
      msg.send msg.random quotes
