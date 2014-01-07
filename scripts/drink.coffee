# Description:
#   Help out with pub decisions
#
# Commands:
#   hubot where should we go for a drink? - Get help with pub decisions
#   hubot which pub should we go to? - Get help with pub decisions
#

module.exports = (robot) ->

  options = [
    "King Charles I",
    "the Parcel Yard",
    "Lord John Russell",
    "The Boot",
    "the Lincoln Lounge",
    "Star Of King's",
    "The Fellow",
    "McGlynn's",
    "Miller's",
    "the Lion",
    "the Lamb",
    "the Perseverance",
    "the Queen's Larder",
    "The Old Nick",
    "the Wilmington Arms",
    "Bree Louise",
    "the Euston Flyer",
    "Jeremy Bentham",
    "the Royal George",
    "The Driver",
    "the Euston Tap",
    "the Exmouth Arms",
    "Prince Arthur",
    "Crown & Anchor",
    "the Norfolk Arms",
    "the Skinners Arms",
    "the Queen's Head",
    "Marquis Cornwallis"
  ]

  prefixes = [
    "Why not try",
    "Maybe",
    "Why not",
    "Do you fancy"
  ]

  repeats = [
    "I already said",
    "Like I said before",
    "I hate to repeat myself",
    "As I said earlier"
  ]

  chooseOption = (msg) ->
    date = new Date()
    today = date.toISOString().split("T")[0];
    prefix = msg.random(prefixes)
    if robot.brain.get("drinkLastChecked") == today
      repeat = msg.random(repeats)
      response = robot.brain.get("drinkLastResponse")
      return "#{repeat} – #{prefix} #{response}?"
    else
      response = msg.random(options)
      robot.brain.set "drinkLastChecked", today
      robot.brain.set "drinkLastResponse", response
      return "#{prefix} #{response}?"

  sendMessage = (message) ->
    msg.send chooseOption(msg)

  robot.respond /where (should|shall) (we|i) (get|go for) (a drink|drinks|a pint|pints)\??/i, sendMessage
  robot.respond /which pub (should|shall) (we|i) go to\??/i, sendMessage
  robot.respond /libation me/i, sendMessage

  robot.respond /CTFDO/i, (msg) ->
    robot.brain.remove "drinkLastChecked"
    robot.brain.remove "drinkLastResponse"
    msg.reply "[clearing the drink option]"
