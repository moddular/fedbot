# Description:
#   Help out with Friday lunch decisions
#
# Commands:
#   hubot what should we have for friday lunch? - Get help with Friday lunch decisions 
#

module.exports = (robot) ->

  options = [
    "The King Charles",
    "The Parcel Yard",
    "curry",
    "Canal 125",
    "The Big Chill House",
    "Honest Burger",
    "somewhere different"
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
    if date.getDay() != 5
      return "It's not Friday yet"
    today = date.toISOString().split("T")[0];
    prefix = msg.random(prefixes)
    if robot.brain.get("fridayLunchLastChecked") == today
      repeat = msg.random(repeats)
      response = robot.brain.get("fridayLunchLastResponse")
      return "#{repeat} – #{prefix} #{response}?"
    else
      response = msg.random(options)
      robot.brain.set "fridayLunchLastChecked", today
      robot.brain.set "fridayLunchLastResponse", response
      return "#{prefix} #{response}?"

  robot.respond /.*friday lunch.*/i, (msg) ->
    msg.send chooseOption(msg)

  robot.respond /CTFLO/i, (msg) ->
    robot.brain.remove "fridayLunchLastChecked"
    robot.brain.remove "fridayLunchLastResponse"
    msg.reply "[clearing the Friday lunch option]"
