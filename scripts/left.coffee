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
        "Who the hell's Perry?",
        "What did Perry do here again?",
        "Perry?... Oh! Short, no work to do, made innuendos? Yeah I know who you mean",
        "Perry? Does not compute",
      ]
