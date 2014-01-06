# Description:
#   Help out with lunch decisions
#
# Commands:
#   hubot what should we have for lunch? - Get help with lunch decisions 
#

module.exports = (robot) ->

  options = [
    "The King Charles",
    "The Parcel Yard",
    "curry",
    "Canal 125",
    "The Big Chill House",
    "Honest Burger",
    "somewhere different",
    "Thai",
    "The refectory",
    "Pret",
    "Wasabi",
    "KERB"
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

  robot.respond /CTFLO/i, (msg) ->
    robot.brain.remove "lunchLastChecked"
    robot.brain.remove "lunchLastResponse"
    msg.reply "[clearing the lunch option]"
