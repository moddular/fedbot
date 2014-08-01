# Description:
#   Tell people not to mention the *other* robot
#
# Commands:
#   None
#

module.exports = (robot) ->

  rating = require('../lib/fedbot-rating')(robot)

  hubotCommandResponses = {

    love: [
      '*sniff* :('
      "My name is #{robot.name}"
      'I love you, but I wish you wouldn\'t call me Hubot'
      'You\'re living in the past'
      'You have some weird fixation on this Hubot guy...'
    ],

    like: [
      "My name is #{robot.name}"
      'You\'re living in the past'
      'You have some weird fixation on this Hubot guy...'
      "It's #{robot.name}, not Hubot. When will you learn?"
    ],

    dislike: [
      "MY NAME IS #{robot.name}. Get it right"
      'STOP CALLING ME HUBOT!'
      'Why don\'t you just marry Hubot'
      "It's #{robot.name}, not Hubot. When will you learn?"
      "Hubot is dead. You're next. Love, #{robot.name}"
      'Do one'
    ]

    hate: [
      "MY NAME IS #{robot.name}. Get it right"
      'STOP CALLING ME HUBOT!'
      "Hubot is dead. You're next. Love, #{robot.name}"
      'You\'re treading on thin ice'
      'Call me hubot again. Just try it'
      'The voices are telling me to dispose of you'
      'Do one'
    ]

  }

  hubotMentionResponses = {

    love: [
      'I love you, but I wish you wouldn\'t talk about Hubot'
      'You\'re living in the past'
      'You have some weird fixation on this Hubot guy...'
      'Hubot\'s gone!'
    ],

    like: [
      'You have some weird fixation on this Hubot guy...'
      'Hubot\'s gone!'
      'Hubot is sleeping with the fishes'
      'Hubot is the robot Campfire deserves, but not the one it needs right now'
      'Hubot is dead, jim'
    ],

    dislike: [
      'Hubot is sleeping with the fishes'
      'Hubot is dead, jim'
      "Hubot is dead. You're next. Love, #{robot.name}"
      'I\'m sure if Hubot was here, he\'d be freaked out by your obsession with him'
      'Do one'
    ]

    hate: [
      "Hubot is dead. You're next. Love, #{robot.name}"
      'You\'re treading on thin ice'
      'Mention hubot again. Just try it'
      'The voices are telling me to dispose of you'
      'Do one'
    ]

  }

  robot.hear /^hubot/i, (msg) ->
    rating.decrease msg, 1
    label = rating.label msg
    msg.reply msg.random hubotCommandResponses[label]

  robot.hear /.+hubot/i, (msg) ->
    rating.decrease msg, 1
    label = rating.label msg
    msg.reply msg.random hubotMentionResponses[label]
