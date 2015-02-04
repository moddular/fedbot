# Description:
#   People who are leaving/have left

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->

  robot.hear /\bperry\b/i, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send msg.random [
        'Who was Perry again?'
        'Ah, Perry. I never really liked him anyway'
        'Perry? Never trust a man with a pierced appendage, that\'s what I say'
        'Perry? Was he the Oompa Loompa?'
        'Who the hell\'s Perry?'
        'What did Perry do here again?'
        'Perry?... Oh! Short, no work to do, made innuendos? Yeah I know who you mean'
        'Perry? Does not compute'
      ]

  robot.hear /\bdan(iel)?\b/i, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send msg.random [
        'I wish Dan hadn\'t left'
        '*sigh* please don\'t talk about Dan – it\'s too painful'
        'Dan? *sniff* he was my favourite'
        'When\'s Dan coming back'
        'I miss Dan'
        'Oh Dan, our time together was too short'
        'Oh Dan. Somebody make a pun, quickly, I need to remember what it was like'
      ]
