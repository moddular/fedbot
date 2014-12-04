# Description:
#   Refectory
#
# Commands:
#   None
#

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /refec/i, (msg) ->
    if randomBetween(1, 10) == 1
      msg.send 'http://i.imgur.com/lRMpiiU.jpg'
