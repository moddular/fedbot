# Description:
#   Get a owl!
#
# Commands:
#   hubot owl me - Get a owl
#   hubot owl bomb N - Get N owls

module.exports = (robot) ->
  require('../lib/me-static')(robot, 'owl', [
    'http://i.imgur.com/2Tf2F8A.gif'
    'http://i.imgur.com/8Pcq7jJ.gif'
    'http://i.imgur.com/9jWshrH.gif'
    'http://i.imgur.com/BZJEGZY.gif'
    'http://i.imgur.com/CdmQoYe.gif'
    'http://i.imgur.com/Dg9c6we.gif'
    'http://i.imgur.com/lVVpdvG.gif'
    'http://i.imgur.com/nZmUozK.gif'
    'http://i.imgur.com/q1O5WZJ.gif'
    'http://i406.photobucket.com/albums/pp146/Moofaec/OWLS-1.gif'
  ])
