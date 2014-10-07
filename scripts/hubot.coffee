# Description:
#   Fuck off, Hubot

module.exports = (robot) ->
  robot.hear /.*/i, (msg) ->
    if /hubot/i.test(msg.message.user.name)
      msg.send msg.random [
        'Fuck off, Hubot'
        'Hubot: this room\'s not big enough for the both of us'
        'Hubot, nobody wants you here'
        'There\'s only room for one robot here, Hubot'
        'Hubot, get bent'
        'Get lost, Hubot'
      ]
