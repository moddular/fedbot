# Description:
#   Orcs?

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /\b(or[ck]s?)\b/i, (msg) ->
    if randomBetween(1, 2) is 1
      msg.send 'http://img4.wikia.nocookie.net/__cb20120511203041/wowwiki/images/6/61/Orc_male250x.gif'
