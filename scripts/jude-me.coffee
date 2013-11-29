# Description:
#   Show picture of jude when someone mentions him
#
# Commands:
#   None
#

module.exports = (robot) ->

  images = [
    "http://i.imgur.com/zxzPlyP.png",
    "http://i.imgur.com/Tfq7Bi7.gif?1",
    "http://www.gyford.com/images/jude.jpg",
    "http://kil.gr/sandbox/secret/fedbot/RVPjude.jpg",
    "http://kil.gr/sandbox/secret/fedbot/jude.jpg",
    "http://kil.gr/sandbox/secret/fedbot/judepad.jpg",
    "http://kil.gr/sandbox/secret/fedbot/sexybeast.jpg"
  ]

  robot.hear /jude me/i, (msg) ->
    msg.send msg.random images
