# Description:
#   Star of Kings (Shit Pub)
#
# Commands:
#   None
#

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /star of kings/i, (msg) ->
    if randomBetween(1, 3) == 1
      #msg.send 'http://sd.keepcalm-o-matic.co.uk/i/shit-pub-with-shit-beer.png'
      #msg.send 'http://i.imgur.com/Wio5g4R.jpg'
      msg.send 'http://i.imgur.com/qqy279P.jpg'
