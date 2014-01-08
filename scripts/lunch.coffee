# Description:
#   Help out with lunch decisions
#
# Commands:
#   hubot what should we have for lunch? - Get help with lunch decisions
#   hubot new lunch option - Get a new lunch suggestion
#

module.exports = (robot) ->

  rating = require('../lib/fedbot-rating')(robot)

  options = [
    "The King Charles",
    "The Parcel Yard",
    "Indian Lounge",
    "Canal 125",
    "The Big Chill House",
    "Honest Burger",
    "somewhere different",
    "Thai-An",
    "the Refectory",
    "Pret",
    "Wasabi",
    "KERB",
    "Gran Sasso"
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
    if robot.brain.get("lunchLastChecked") == today
      repeat = msg.random(repeats)
      response = robot.brain.get("lunchLastResponse")
      return "#{repeat} – #{prefix} #{response}?"
    else
      response = msg.random(options)
      robot.brain.set "lunchLastChecked", today
      robot.brain.set "lunchLastResponse", response
      return "#{prefix} #{response}?"

  robot.respond /(what|where) (should|shall) (we|i) (get|go|have) for lunch\??/i, (msg) ->
    msg.send chooseOption(msg)

  robot.respond /new lunch option/i, (msg) ->
    rating.decrease msg, 1
    robot.brain.remove "lunchLastChecked"
    robot.brain.remove "lunchLastResponse"
    msg.reply "Why ask me if you're not going to take my advice? Fine."
    msg.send chooseOption(msg)
