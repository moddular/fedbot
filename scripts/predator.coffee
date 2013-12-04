# Description:
#   Show picture of predator when adam is mentioned
#
# Commands:
#   None
#

module.exports = (robot) ->

  images = [
    "http://th03.deviantart.net/fs18/PRE/f/2007/208/3/d/PREDATOR___by_adonihs.jpg",
    "https://www.stanwinstonschool.com/uploads/attachments/42/predator-040.jpg",
    "http://images5.fanpop.com/image/photos/28700000/Wolf-mask-predator-28762278-1574-1200.jpg",
    "http://1.bp.blogspot.com/-60MdqGCHEvA/Tl409JA3DuI/AAAAAAAAAC8/8e3Q4tDvrow/s640/Predator.jpg",
    "http://static.comicvine.com/uploads/original/10/108875/3208245-9034223807-preda.jpg",
    "http://images4.fanpop.com/image/photos/14700000/Predator-predators-2010-movie-14721646-1200-800.jpg",
    "http://i.imgur.com/bdW4hXx.jpg",
    "http://i.imgur.com/7sz4giy.jpg"
  ]

  robot.hear /adam|predator/i, (msg) ->
    msg.send msg.random images
