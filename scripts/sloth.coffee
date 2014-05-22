# Description:
#   Get a Sloth
#
# Commands:
#   hubot sloth me - Get a random Sloth
#   hubot sloth bomb N - Get N Sloths

module.exports = (robot) ->
  require('../lib/me-static')(robot, 'sloth', [
    'http://24.media.tumblr.com/c99697ade79f5fdc1f847fee82f681a1/tumblr_mrla15bRZ91sfq5p3o1_400.gif'
    'http://forgif.me/system/image/5080/image.gif'
    'http://i.imgur.com/SSvEUgf.gif'
    'http://img.pandawhale.com/post-22527-Sloth-Switching-Branches-gif-KaAc.gif'
    'http://media.giphy.com/media/jsnACY5sBbPDa/giphy.gif'
    'http://media3.giphy.com/media/s4zt0MoO4BJyU/giphy.gif'
    'http://static.fjcdn.com/gifs/Deal+with+it_12e775_4191317.gif'
    'https://i.chzbgr.com/maxW500/7348917248/h9165DA84/#.gif'
    'https://i.imgur.com/dhbVxtG.gif'
  ])
