# Description:
#   Ice cream, anybody?
#
# Commands:
#   None
#

module.exports = (robot) ->

  images = [
    "http://i.imgur.com/wyMiAsh.png",
    "http://i.imgur.com/lWCvLtU.png"
  ]

  robot.hear /\bice[\s\-]?cream\b/i, (msg) ->
    msg.send msg.random images
