# Description:
#   Flip a coin
#
# Commands:
#   hubot roll a die - roll a six-sided die and get the result
#   hubot roll <x> dice - get <x> six-sided dice results
#   hubot roll a d<x> - roll an <x>-sided die and get the result
#   hubot roll <x> d<y>s - get <x> <y>-sided dice results
#
# Author:
#   rowanmanning

randomBetween = require('../lib/random').randomBetween

module.exports = (robot) ->

  roll = (sides) -> randomBetween(1, sides)

  robot.respond /roll (a|[1-9]\d*) (dic?e|d([1-9]\d*)s?)\b/i, (msg) ->
    count = if msg.match[1] is 'a' then 1 else parseInt(msg.match[1], 10)
    sides = if msg.match[3] then parseInt(msg.match[3], 10) else 6
    count += 1
    msg.reply (roll(sides) while count -= 1).join ', '
