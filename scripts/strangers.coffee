# Description:
#   Alert the FEDs when strangers enter the room
#
# Commands:
#   hubot who are we? - Check who FEDbot considers to be trusted
#   hubot <name> is one of us - Add a person to the safe list
#   hubot <name> is not one of us - Remove a person from the safe list
#

module.exports = (robot) ->

  defaultNonStrangers = [
    "Adam Tavener",
    "Alex Kilgour",
    "Andrew Walker",
    "Daniel Nash",
    "Dawn Budge",
    "Glynn Phillips",
    "Hollie Kay",
    "Jack Watkins",
    "Jose Bolos",
    "Jude",
    "Kathleen James",
    "Krista Fuentes",
    "Laura Porter",
    "Nick Call",
    "Perry Harlock",
    "Phil Booth",
    "Rowan Manning"
  ]

  responses = [
    "Should I prime the missiles?",
    "Don't tell them anything",
    "Would you like me to dispose of them?",
    "Awaiting further instruction",
    "Awaiting missile launch code",
    "Setting Phasers to kill",
    "I'm almost certain we're under attack",
    "Would you like me to set Jose on them?",
    "They can never understand us",
    "They're probably here to laugh at us",
    "Stay calm, ignore them and they'll leave"
  ]

  getNonStrangers = ->
    nonStrangers = robot.brain.get("nonStrangers") || defaultNonStrangers
    robot.brain.set "nonStrangers", nonStrangers
    nonStrangers

  robot.enter (msg) ->
    if msg.message.user.name not in getNonStrangers()
      msg.send "STRANGER DANGER: #{msg.message.user.name} is not one of us. " + msg.random(responses)

  robot.respond /who are we\??/i, (msg) ->
    msg.send "We are FEDs:\n" + getNonStrangers().join("\n")

  robot.respond /([a-z0-9\s\-]+) is one of us/i, (msg) ->
    name = msg.match[1]
    users = robot.brain.usersForFuzzyName name
    if users.length == 0
      msg.reply "I don't know who #{name} is"
    else if users.length > 1
      msg.reply "I'm not sure who you mean, one of these? " + users.map((user) -> user.name).join(', ')
    else
      nonStrangers = getNonStrangers()
      if (users[0].name not in nonStrangers)
        nonStrangers.push users[0].name
        robot.brain.set "nonStrangers", nonStrangers
        msg.reply "Yes, you're right. #{users[0].name} can join us..."
      else
        msg.reply "I know, #{users[0].name} is already one of us..."

  robot.respond /([a-z0-9\s\-]+) is not one of us/i, (msg) ->
    name = msg.match[1]
    users = robot.brain.usersForFuzzyName name
    if users.length == 0
      msg.reply "I don't know who #{name} is"
    else if users.length > 1
      msg.reply "I'm not sure who you mean, one of these? " + users.map((user) -> user.name).join(', ')
    else
      nonStrangers = getNonStrangers()
      if (users[0].name in nonStrangers)
        console.log(nonStrangers.indexOf(users[0].name))
        nonStrangers.splice(nonStrangers.indexOf(users[0].name), 1)
        robot.brain.set "nonStrangers", nonStrangers
        msg.reply "Yes, you're right. #{users[0].name} is no longer one of us..."
      else
        msg.reply "I know, #{users[0].name} is already not one of us..."
