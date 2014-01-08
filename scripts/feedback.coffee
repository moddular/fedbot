# Description:
#   Quietly listen for feedback
#
# Commands:
#   None
#

module.exports = (robot) ->

  rating = require("../lib/fedbot-rating")(robot)

  quantityModifiers = "(very|really|extremely|quite|enormously|incredibly|massively|definitely|pretty)"

  # General bad feedback
  badFeedback = ///
    (
      \bfedbot('?s|\sis)\s
      (#{quantityModifiers}\s)?
      ( stupid
      | dumb
      | rubbish
      | shit
      | scary
      | evil
      | bad
      | malfunctioning
      | crap
      | annoying
      | awful
      | nasty
      | thick
      )
    |
      i\s(dislike|hate)\sfedbot
    )
  \b///i
  robot.hear badFeedback, (msg) ->
    rating.decrease msg, 1
    msg.reply ":("

  # General good feedback
  goodFeedback = ///
    (
      \bfedbot('?s|\sis)\s
      (#{quantityModifiers}\s)?
      ( clever
      | wonderful
      | lovely
      | nice
      | friendly
      | good
      | fun
      | great
      | sexy
      | excellent
      | awesome
      | funny
      | intelligent
      )
    |
      i\s(like|love)\sfedbot
    )
  \b///i
  robot.hear goodFeedback, (msg) ->
    rating.increase msg, 1
    msg.reply ":)"

  # Shhh
  quietWords = "(be quiet|shh+|hush|shut up|shut the [a-z]+ up)"
  robot.hear ///fedbot\s#{quietWords}|#{quietWords}\sfedbot///i, (msg) ->
    rating.decrease msg, 1
    quietWord = if msg.match[1] then msg.match[1] else msg.match[2]
    msg.reply "No, you #{quietWord}"
