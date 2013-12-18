# Description:
#   Tell people not to mention the *other* robot
#
# Commands:
#   None
#

module.exports = (robot) ->

  nonStalkers = [
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

  robot.enter (msg) ->
    if msg.message.user.name not in nonStalkers
      msg.send "STALKER ALERT: #{msg.message.user.name} is not a FED. " + msg.random(responses)
