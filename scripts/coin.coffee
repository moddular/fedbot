# Description:
#   Flip a coin
#
# Commands:
#   hubot flip a coin - get a heads or tails response
#   hubot flip <x> coins - get <x> heads or tails responses
#
# Author:
#   rowanmanning

randomBetween = require('../lib/random').randomBetween

module.exports = (robot) ->

  flip = -> if randomBetween(0, 1) then 'Heads' else 'Tails'

  robot.respond /flip (a|[1-9]\d*) coins?\b/i, (msg) ->
    count = if msg.match[1] is 'a' then 1 else parseInt msg.match[1], 10
    msg.reply (flip() while count--).join ', '
