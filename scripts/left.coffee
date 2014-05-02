# Description:
#   People who are leaving/have left

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
        "Who was Perry again?",
        "Ah, Perry. I never really liked him anyway",
        "Perry? Never trust a man with a pierced appendage, that's what I say",
        "Perry? Was he the Oompa Loompa?",
        "*sigh* please don't talk about Perry – it's too painful",
        "Perry? *sniff* he was my favourite...",
        "When's Perry coming back?",
        "I miss Perry",
        "Oh Perry, our time together was too short"
      ]
