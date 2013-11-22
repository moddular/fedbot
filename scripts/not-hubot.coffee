# Description:
#   Tell people not to mention the *other* robot
#
# Commands:
#   None
#

module.exports = (robot) ->

  responses = [
    "My name is #{robot.name}",
    "STOP CALLING ME HUBOT!",
    "You have some weird fixation on this Hubot guy...",
    "It's #{robot.name}, not Hubot. When will you learn?",
    "Hubot is dead. You're next. Love, #{robot.name}"
  ]

  robot.hear /hubot/i, (msg) ->
    msg.reply msg.random responses
