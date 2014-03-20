# Description:
#   Jude images!
#
# Commands:
#   hubot jude me - Get a random Jude image
#   hubot jude bomb N - Get N Jude images

module.exports = (robot) ->

  require('../lib/me')(robot, 'jude', [
    'http://i.imgur.com/5Y3vocd.png',
    'http://i.imgur.com/ED67k6V.jpg',
    'http://i.imgur.com/KTeb28x.jpg',
    'http://i.imgur.com/MQq4jd4.png',
    'http://i.imgur.com/Tfq7Bi7.gif',
    'http://i.imgur.com/zEEPSwd.jpg',
    'http://kil.gr/sandbox/secret/fedbot/hey-jude.jpg',
    'http://kil.gr/sandbox/secret/fedbot/jude.jpg',
    'http://kil.gr/sandbox/secret/fedbot/judepad.jpg',
    'http://kil.gr/sandbox/secret/fedbot/kim-jong-jude.jpg',
    'http://kil.gr/sandbox/secret/fedbot/RVPjude.jpg',
    'http://kil.gr/sandbox/secret/fedbot/sexybeast.jpg',
    'http://kil.gr/sandbox/secret/fedbot/tourist.jpg',
    'http://www.gyford.com/images/jude.jpg',
  ])

  robot.hear /judehoff/i, (msg) ->
    msg.send 'http://i.imgur.com/Tfq7Bi7.gif'

  robot.hear /judehulk/i, (msg) ->
    msg.send 'http://i.imgur.com/83ywTHA.png'

  robot.hear /our glorious leader/i, (msg) ->
    msg.send 'http://kil.gr/sandbox/secret/fedbot/kim-jong-jude.jpg'

  robot.hear /\bdevil(ish|ishly|\b)/i, (msg) ->
    msg.send 'http://i.imgur.com/zEEPSwd.jpg'

  robot.hear /\bhench|ripped|buff|bulk up\b/i, (msg) ->
    msg.send 'http://i.imgur.com/MQq4jd4.png'
