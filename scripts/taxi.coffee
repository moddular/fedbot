# Description:
#   Taxi
#
# Commands:
#   None
#

module.exports = (robot) ->
  robot.hear /\taxi\b/i, (msg) ->
    msg.send 'http://images.amcnetworks.com/ifc.com/wp-content/uploads/2014/03/PDXia_405_Reaction1.gif'
