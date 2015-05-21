# Description:
#   Where is Rowan's coat?
#
# Commands:
#   None
#

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /\b(coat|jacket)\b/i, (msg) ->
    if randomBetween(1, 10) is 1
      msg.send "Where is your #{msg.match[1]}, Rowan?"
