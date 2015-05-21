# Description:
#   Taxi
#
# Commands:
#   None
#

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /\btaxi\b/i, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send 'http://images.amcnetworks.com/ifc.com/wp-content/uploads/2014/03/PDXia_405_Reaction1.gif'
