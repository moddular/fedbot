# Description:
#   Quietly listen for feedback
#
# Commands:
#   None
#

module.exports = (robot) ->

  rating = require('../lib/fedbot-rating')(robot)

  insults = ///
    fedbot('?s|\sis)
    (.*)
    (
        stupid
      | dumb
      | rubbish
      | shit
      | scary
      | evil
      | bad
      | malfunctioning
      | crap
    )
  ///i

  dislikes = ///
    (
        dislike
      | hate
    )
    (.*)
    fedbot
  ///i

  compliments = ///
    fedbot('?s|\sis)
    (.*)
    (
        clever
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
    )
  ///i

  likes = ///
    (
        like
      | love
    )
    (.*)
    fedbot
  ///i

  robot.hear insults, (msg) ->
    if !/not|isn'?t/.test msg.message.text
      rating.decrease msg, 1
      msg.reply ":("

  robot.hear dislikes, (msg) ->
    if !/not|don'?t/.test msg.message.text
      rating.decrease msg, 1
      msg.reply ":("

  robot.hear compliments, (msg) ->
    if !/not|isn'?t/.test msg.message.text
      rating.increase msg, 1
      msg.reply ":)"

  robot.hear likes, (msg) ->
    if !/not|don'?t/.test msg.message.text
      rating.increase msg, 1
      msg.reply ":)"
