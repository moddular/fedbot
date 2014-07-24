# Description:
#   Dickhead Science
#
# Commands:
#   None
#

randomBetween = require('../lib/random').randomBetween

module.exports = (robot) ->
  robot.hear /\b(digital science|ds)\b/i, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send 'http://i.imgur.com/g2kGGLS.png'
