# Description:
#   You will respect my authoritah!

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /\b(authority|authorita+h+)\b/i, (msg) ->
    if randomBetween(1, 3) is 1
      msg.send 'http://i.imgur.com/NAtS7u3.jpg'
