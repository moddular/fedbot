# Description:
#   Get Rammed
#
# Commands:
#   hubot ram me - Get a random Ram
#   hubot ram bomb N - Get N Rams

module.exports = (robot) ->
  require('../lib/me')(robot, 'ram', [
    'http://a.gifb.in/092013/1380127740_goat_headbutt_fail.gif',
    'http://funnyasduck.net/wp-content/uploads/2013/03/funny-ram-sheep-head-butting-girl-animated-gif-pics.gif',
    'http://i.imgur.com/Hp51sUj.gif',
    'http://i.imgur.com/ppVdI.gif',
    'http://i.imgur.com/ps18BeK.gif',
    'http://i.imgur.com/ZzoDF8c.jpg',
    'http://i1112.photobucket.com/albums/k497/animalsbeingdicks/abd-292.gif',
    'http://i1112.photobucket.com/albums/k497/animalsbeingdicks/animalsbeingdicks/abd-46.gif',
    'http://static.fjcdn.com/gifs/Why_1e1704_403730.gif',
    'http://winblog.org/wp-content/uploads/2012/10/sheep-win.gif',
    'http://www.eonline.com/eol_images/Entire_Site/2014017/rs_360x257-140117134531-tumblr_my1pkgyKUF1t5ksxco1_400.gif',
  ])
