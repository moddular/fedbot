# Description:
#   That's Numberwang!
#
# Commands:
#   None
#

module.exports = (robot) ->

  randomBetween = (min, max) ->
    Math.floor(Math.random() * (max - min + 1)) + min

  robot.hear /\b\d\b/i, (msg) ->
    if not /https?:\/\//i.test(msg.message.text)
      if randomBetween(1, 5) is 1
        msg.reply "That's Numberwang!"
