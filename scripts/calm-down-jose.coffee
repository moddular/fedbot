# Description:
#   Calm Jose down
#
# Commands:
#   None
#

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->

  responses = [
    'Calm down, Jose!'
    'Jose, next time you should close your eyes and count to ten'
    'Take a deep breath and relax, Jose'
    'Let it out, Jose, let it all out'
    'Don\'t bottle it up now, Jose'
    'Jose, we\'re all friends here, calm down'
    'Think happy thoughts, Jose'
  ]

  robot.hear /shit|crap|rubbish|awful|terrible|fucking|fuck|muppets|bloody|!!+/i, (msg) ->
    if randomBetween(1, 5) is 1 and /jose/i.test(msg.message.user.name)
      msg.send msg.random responses
