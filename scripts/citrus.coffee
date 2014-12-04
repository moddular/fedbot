# Description:
#   Dogs licking citrus fruits
#
# Commands:
#   hubot citrus me - Get a random dog citrus image
#   hubot citrus bomb N - Get N dog citrus images

module.exports = (robot) ->
  require('./helpers/me-static')(robot, 'citrus', [
    'http://s3-ec.buzzfed.com/static/2014-05/enhanced/webdr04/8/12/anigif_enhanced-10204-1399565267-1.gif'
    'http://d24w6bsrhbeh9d.cloudfront.net/photo/aWZbBrx_460sa.gif'
    'http://24.media.tumblr.com/tumblr_mb7zp9n2I61qz581wo1_400.gif'
    'http://forgif.me/system/image/5202/image.gif'
    'http://img.pandawhale.com/22349-Lemon-Beagle-fCsQ.gif'
    'http://cdn.lolbrary.com/2013/12/6/lolbrary.com_54721_1386365533.gif'
  ])
