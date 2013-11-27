# Description:
#   Show picture of predator when adam is mentioned
#
# Commands:
#   None
#

module.exports = (robot) ->

  images = [
    "http://th03.deviantart.net/fs18/PRE/f/2007/208/3/d/PREDATOR___by_adonihs.jpg",
    "https://www.stanwinstonschool.com/uploads/attachments/42/predator-040.jpg"
  ]

  robot.hear /^adam|predator/i, (msg) ->
    msg.send msg.random images
