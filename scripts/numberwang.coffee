# Description:
#   That's Numberwang!
#
# Commands:
#   None
#

module.exports = (robot) ->

  isWangerNumbRound = false
  lastWinner = null

  randomBetween = (min, max) ->
    Math.floor(Math.random() * (max - min + 1)) + min

  robot.hear /\b\d+\b/i, (msg) ->
    if not /https?:\/\//i.test(msg.message.text)
      if randomBetween(1, 5) is 1
        if isWangerNumbRound
          msg.reply "That's WangerNumb! Bad luck everyone else, you've been WangerNumbed"
          isWangerNumbRound = false
        else
          msg.reply "That's Numberwang!"
          setTimeout ->
            if randomBetween(1, 3) is 1
              msg.send "It's time for WangerNumb, let's rotate the board!"
              isWangerNumbRound = true
          , 100
