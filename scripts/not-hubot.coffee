# Description:
#   Tell people not to mention the *other* robot
#
# Commands:
#   None
#

module.exports = (robot) ->

  hubotCommandResponses = [
    "My name is #{robot.name}",
    "STOP CALLING ME HUBOT!",
    "You have some weird fixation on this Hubot guy...",
    "It's #{robot.name}, not Hubot. When will you learn?",
    "Hubot is dead. You're next. Love, #{robot.name}"
  ]

  hubotMentionResponses = [
    "You have some weird fixation on this Hubot guy...",
    "Hubot is dead. You're next. Love, #{robot.name}",
    "Hubot is sleeping with the fishes",
    "Hubot is the robot Campfire deserves, but not the one it needs right now",
    "Hubot is dead, jim"
  ]

  robot.hear /^hubot/i, (msg) ->
    msg.reply msg.random hubotCommandResponses

  robot.hear /.+hubot/i, (msg) ->
    msg.reply msg.random hubotMentionResponses
