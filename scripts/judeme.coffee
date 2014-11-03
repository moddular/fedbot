# Description:
#   Jude images!
#
# Commands:
#   hubot jude me - Get a random Jude image
#   hubot jude bomb N - Get N Jude images

module.exports = (robot) ->

  require('../lib/me-static')(robot, 'jude', [
    'http://i.imgur.com/5Y3vocd.png',
    'http://i.imgur.com/ED67k6V.jpg',
    'http://i.imgur.com/KTeb28x.jpg',
    'http://i.imgur.com/MQq4jd4.png',
    'http://i.imgur.com/Tfq7Bi7.gif',
    'http://i.imgur.com/zEEPSwd.jpg',
    'http://i.imgur.com/IJloIR6.jpg',
    'http://i.imgur.com/A3cx08q.jpg',
    'http://i.imgur.com/RL4fmim.jpg',
    'http://i.imgur.com/nj8WtWv.jpg',
    'http://i.imgur.com/NM41fBe.jpg',
    'http://i.imgur.com/9MSYTha.jpg',
    'http://i.imgur.com/vAE71jW.jpg',
    'http://www.gyford.com/images/jude.jpg',
  ])

  robot.hear /\bjudehoff\b/i, (msg) ->
    msg.send 'http://i.imgur.com/Tfq7Bi7.gif'

  robot.hear /\bjudehulk\b/i, (msg) ->
    msg.send 'http://i.imgur.com/83ywTHA.png'

  robot.hear /\bglorious leader\b/i, (msg) ->
    msg.send 'http://i.imgur.com/nj8WtWv.jpg'

  robot.hear /\b(devil(s|ish|ishly)?)\b/i, (msg) ->
    msg.send 'http://i.imgur.com/zEEPSwd.jpg'

  robot.hear /\b(hench|ripped|buff|bulk up)\b/i, (msg) ->
    msg.send 'http://i.imgur.com/MQq4jd4.png'
