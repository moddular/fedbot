# Description:
#   Aaaaaayyyyyy!
#
# Commands:
#   hubot fonz me - Get a random Fonz image
#   hubot fonz bomb N - Get N Fonz images
#
# Author:
#   Sam Rios

module.exports = (robot) ->
  require('../lib/me')(robot, 'fonz', [
    'http://media.giphy.com/media/7RxDzSVhQK0Fy/giphy.gif',
    'http://media2.giphy.com/media/tITfss8cqzTO0/200.gif',
    'http://media0.giphy.com/media/Tg0tzqz7gq7As/200.gif',
    'http://web.tiscali.it/albaworld/Foto%20Telefilm/Fonzie.jpg',
    'https://i.ytimg.com/vi/XetXRIvhk_Y/mqdefault.jpg',
  ])
