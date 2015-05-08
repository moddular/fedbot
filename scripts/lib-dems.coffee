# Description:
#   Lib-Dems?

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /\b(lib|liberal)[\-\s]+(democrat|dem)s?\b/i, (msg) ->
    if randomBetween(1, 2) is 1
      msg.send 'http://i.imgur.com/hbYiS1O.png'
