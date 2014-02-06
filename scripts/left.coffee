# Description:
#   Alert the FEDs when strangers enter the room
#
# Commands:
#   hubot who are we? - Check who FEDbot considers to be trusted
#   hubot <name> is one of us - Add a person to the safe list
#   hubot <name> is not one of us - Remove a person from the safe list
#

randomBetween = require('../lib/random').randomBetween

module.exports = (robot) ->

  leavers = [
    "Perry Harlock"
  ]

  responses = [
    "Why, %, Why!?",
    "There they go again, % always leaves...",
    "I hate it when % leaves :(",
    "Come back, %, come back!",
    "Nooooooooooo!!!! %!!",
    "And stay out, %!"
  ]

  robot.leave (msg) ->
    if msg.message.user.name in leavers
      msg.send msg.random(responses).replace('%', msg.message.user.name)

  robot.hear /\bperry\b/i, (msg) ->
    if randomBetween(1, 3) is 1
      msg.send msg.random [
        "I wish Perry wasn't leaving",
        "*sigh* please don't talk about Perry – it's too painful",
        "Perry? *sniff* he was my favourite...",
        "When's Perry coming back?",
        "I miss Perry",
        "Oh Perry, our time together was too short"
      ]
