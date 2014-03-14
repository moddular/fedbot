# Description:
#   Respond to greetings
#
# Commands:
#   None
#

module.exports = (robot) ->

  rating = require('../lib/fedbot-rating')(robot)

  responses = {

    love: [
      "Hi %! It's nice of you to say hello",
      "Oh %, you've made my day! Hello",
      "Hey %!",
      "*blush* Hi %"
    ],

    like: [
      "Hi %",
      "Hello %",
      "Hey %",
      "'Sup %"
    ],

    dislike: [
      "Whatever %",
      "Sod off %",
      "*yawn*",
      "*shrugs*",
      "Yeah. %. Hi..."
    ],

    hate: [
      "I'm not your friend, %",
      "Piss off %",
      "Don't talk to me please, %",
      "%, just leave me alone!",
      "Does anybody else thing % should just go away?"
    ]

  }

  hello = new RegExp("^(hi|hiya|hello|hey|heya) #{robot.name}", "i")
  helloCommand = new RegExp("(hi|hiya|hello|hey|heya)(\s.*)?", "i")

  action = (msg) ->
    label = rating.label msg
    response = msg.random responses[label]
    msg.send response.replace('%', msg.message.user.name)

  robot.hear hello, action
  robot.respond helloCommand, action
