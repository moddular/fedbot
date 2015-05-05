# Description:
#   What a journal should be is a document of misery
#
# Commands:
#   None
#

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /\bjournals?\b/i, (msg) ->
    if randomBetween(1, 30) == 1
      msg.send 'http://38.media.tumblr.com/67c07a5d4f7ae453faaa135aa481c4c4/tumblr_ndi3aruVGv1qgmdm9o1_400.gif'
