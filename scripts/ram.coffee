# Description:
#   Get Rammed
#
# Commands:
#   hubot ram me - Get a random Ram
#   hubot ram bomb N - Get N Rams

module.exports = (robot) ->
  require('../lib/me')(robot, 'ram', [
    'http://i.imgur.com/Hp51sUj.gif',
    'http://i.imgur.com/ppVdI.gif',
    'http://i1112.photobucket.com/albums/k497/animalsbeingdicks/abd-292.gif',
    'http://i1112.photobucket.com/albums/k497/animalsbeingdicks/animalsbeingdicks/abd-46.gif',
  ])
