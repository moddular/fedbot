# Description:
#   Wordpress
#
# Commands:
#   None
#

randomBetween = require('../lib/random').randomBetween

module.exports = (robot) ->

  quotes = [
    'Where's your team, Glynn?'
    'Where are your teammates, Glynn?'
    'Are your teammates late again for a meeting, Glynn?'
  ]

module.exports = (robot) ->
  robot.hear /\bwordpress\b/i, (msg) ->
    if randomBetween(1, 2) is 1
      msg.send msg.random quotes
