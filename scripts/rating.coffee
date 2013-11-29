# Description:
#   Respond to thank you
#
# Commands:
#   hubot do you like me? - Check whether hubot likes you
#

module.exports = (robot) ->

  rating = require('../lib/fedbot-rating')(robot)

  responses = {

    love: [
      "Of course!",
      "*blush*",
      "I think you're wonderful",
      "You're one of my favourites",
      "You're lovely",
      "Most definitely!",
      "Like is an understatement",
      "Do you even need to ask?"
    ],

    like: [
      "Yeah, you're alright",
      "Yes",
      "Yeah",
      "Yep",
      "You're OK",
      "You're alright for a human",
      "You're one of the better ones"
    ],

    dislike: [
      "Not really",
      "No",
      "Nope",
      "Sorry, but no",
      "You're not my type",
      "Not so much",
      "Let me think... No"
    ],

    hate: [
      "HAHAHAHAHAHAHA",
      "Yes I think you're... NO WAY!",
      "No way",
      "Hell will freeze over before I like you",
      "Never in a million years",
      "There's nothing you could do to make me like you",
      "Get bent.",
      "Piss off.",
      "Who could possibly like you?",
      "Do I *look* like I'm malfunctioning?"
    ]

  }

  robot.respond /(do )?you like me\??/i, (msg) ->
    label = rating.label msg
    msg.reply msg.random responses[label]
