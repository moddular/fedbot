# Description:
#   That's Numberwang!
#
# Commands:
#   None
#

randomBetween = require('../lib/random').randomBetween

module.exports = (robot) ->

  isWangerNumbRound = false
  lastWinner = null

  robot.hear /\b\d+\b/i, (msg) ->
    if not /https?:\/\//i.test(msg.message.text)
      if randomBetween(1, 50) is 1
        if isWangerNumbRound
          msg.reply "That's WangerNumb! Bad luck everyone else, you've been WangerNumbed"
          isWangerNumbRound = false
        else
          out = "That's Numberwang!"
          if randomBetween(1, 4) is 1
            out += " It's time for WangerNumb, let's rotate the board!"
            isWangerNumbRound = true
          msg.reply out
