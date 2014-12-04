# Description:
#   Door says hiya!

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /\bhi-?ya\b/i, (msg) ->
    if randomBetween(1, 2) is 1
      msg.send 'http://i.imgur.com/JTN322C.jpg'
