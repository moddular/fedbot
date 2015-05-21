# Description:
#   Where are Glynn's trousers?
#
# Commands:
#   None
#

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /\b(trousers|pants)\b/i, (msg) ->
    if randomBetween(1, 10) is 1
      msg.send "Where are your #{msg.match[1]}, Glynn?"
