# Description:
#   Spill the beans on some piece of salacious gossip
#
# Commands:
#   fedbot gossip me
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
    "Phil Booth",
    "Rowan Manning"
  ]

  getNonStrangers = ->
    nonStrangers = robot.brain.get("nonStrangers") || defaultNonStrangers
    robot.brain.set "nonStrangers", nonStrangers
    nonStrangers

  # someone is activitying...
  activitiesSolo = [
    "stealing",
    "punching",
    "massaging",
    "throwing",
    "marrying",
    "punishing"
  ]

  # someone is activitying with...
  activitiesADeux = [
    "flirting",
    "sexting",
    "dancing",
    "fighting",
    "arguing"
  ]

  celebrities = [
    "Stephen Hawking",
    "Kim Kardashian",
    "Roy Chubby Brown",
    "Justin Bieber",
    "the 3x life-size model of David Hasselhoff",
    "Roy from The IT Crowd",
    "Digital Science",
    "Professor Brian Cox",
    "Kerry Katona",
    "Ash and Jerwayne",
    "WHO"
  ]

  excusesDueToOthers = [
    "wild romps",
    "huge row",
    "sneaky flirting sessions",
    "torrid affair",
    "secret talk"
  ]

  excusesDueToFate = [
    "missing doughnuts",
    "stolen dollars",
    "injuries sustained",
    "chair bumps",
    "badly-stuffed animals",
    "shit beer"
  ]

  objects = [
     "doughnuts",
     "shit beer",
     "photos from research journals",
     "a stuffed fox",
     "one of the moles",
     "Jude's baseball bat"
  ]

  locations = [
     "devtoilet",
     "Digital Science",
     "the Refectory",
     "the canal",
     "the Lincoln"
  ]


  robot.respond /gossip me/i, (msg) ->

    # decide who to spill the beans on
    allFeds = getNonStrangers()
    thisFed = msg.random allFeds

    # roll the dice for a gossip format
    dice = Math.floor(Math.random() * 6) + 1

    if dice is 1
      gossip = thisFed + " has been " + msg.random activitiesSolo
      gossip = gossip + " " + msg.random celebrities
      gossip = gossip + " in " + msg.random locations

    if dice is 2
      gossip = thisFed + " is " + msg.random activitiesADeux
      gossip = gossip + " with " + msg.random celebrities

    if dice is 3
      gossip = thisFed + " was " + msg.random activitiesADeux
      gossip = gossip + " in " + msg.random locations
      gossip = gossip + " with " + msg.random objects

    if dice is 4
      gossip = msg.random celebrities
      gossip = gossip + " told the papers that " + thisFed + " was " + msg.random activitiesSolo
      gossip = gossip + " " + msg.random objects
      gossip = gossip + " in " + msg.random locations
      gossip = gossip + " because of " + msg.random excusesDueToFate

    if dice is 5
      gossip = "apparently " + msg.random objects
      gossip = gossip + " was the reason " + thisFed
      gossip = gossip + " was "  + msg.random activitiesADeux
      gossip = gossip + " with " + msg.random celebrities

    if dice is 6
      gossip = thisFed + " and " + msg.random celebrities
      gossip = gossip + " were "  + msg.random activitiesADeux
      gossip = gossip + " with " + msg.random objects

    msg.send gossip








