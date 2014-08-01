# Description:
#   Horatio
#
# Commands:
#   None
#

module.exports = (robot) ->

  images = [
    'http://stream1.gifsoup.com/view2/1798522/horatio-epic-o.gif'
    'http://i.imgur.com/lWCvLtU.png'
    'http://youfoundasecret.files.wordpress.com/2013/03/vlcsnap-2013-03-13-14h35m58s140a.png'
    'http://wac.450f.edgecastcdn.net/80450F/comicsalliance.com/files/2011/08/csi.jpg'
    'http://media.tumblr.com/tumblr_mew4ws2ikD1rok1mk.gif'
    'http://i.imgur.com/HcrE0up.gif'
    'http://stream1.gifsoup.com/view3/2098977/horatio-caine-o.gif'
    'http://images5.fanpop.com/image/photos/31900000/Horatio-csi-miami-31981664-300-162.gif'
    'http://stream1.gifsoup.com/view/100142/horatio-sunglasses-o.gif'
    'http://media1.giphy.com/media/xPGkOAdiIO3Is/giphy.gif'
    'http://stream1.gifsoup.com/view1/1336353/horatio-lunettes-o.gif'
  ]

  robot.hear /\b(csi|horatio|yeaa+h)\b/i, (msg) ->
    msg.send msg.random images
