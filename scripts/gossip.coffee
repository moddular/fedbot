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
    "punishing",
    "grooming",
    "boning",
    "kicking",
    "destroying",
    "vomiting"
  ]

  # someone is activitying with...
  activitiesADeux = [
    "flirting",
    "sexting",
    "dancing",
    "fighting",
    "arguing",
    "colluding",
    "plotting",
    "cottaging"
  ]

  celebrities = [
    "Stephen Hawking",
    "Kim Kardashian",
    "Roy Chubby Brown",
    "Justin Bieber",
    "the 3x life-size model of David Hasselhoff",
    "Digital Science",
    "Professor Brian Cox",
    "Kerry Katona",
    "the Chuckle Brothers",
    "WHO",
    "a badly-stuffed animal",
    "Paris Hilton"
  ]

  # someone had a ... with someone
  eventOccurrence = [
    "wild romp",
    "huge row",
    "sneaky flirting session",
    "torrid affair",
    "bit of a palaver"
  ]

  excusesDueToFate = [
    "missing doughnuts",
    "stolen dollars",
    "injuries sustained",
    "chair bumps",
    "badly-stuffed animals",
    "shit beer",
    "too many meetings",
    "COPS tickets",
    "OOCSS",
    "Jude on a stick"
  ]

  objects = [
     "doughnuts",
     "shit beer",
     "photos from research journals",
     "a stuffed fox",
     "one of the moles",
     "Jude's baseball bat",
     "Shunter",
     "a Greggs sausage roll",
     "a slate from the Star of Kings"
  ]

  locations = [
     "devtoilet",
     "Digital Science",
     "the Refectory",
     "the canal",
     "the Lincoln",
     "the Star of Kings",
     "Central Station",
     "Perry's mum's house"
  ]


  robot.respond /gossip me/i, (msg) ->

    # decide who to spill the beans on
    allFeds = getNonStrangers()
    thisFed = msg.random allFeds

    # roll the dice for a gossip format
    dice = Math.floor(Math.random() * 6) + 1

    if dice is 1
      # fed has been activitying celebrity in location
      gossip = thisFed + " has been " + msg.random activitiesSolo
      gossip = gossip + " " + msg.random celebrities
      gossip = gossip + " in " + msg.random locations

    if dice is 2
      # fed had a event (a event? a event!) with celebrity over object
      gossip = thisFed + " had a " + msg.random eventOccurrence
      gossip = gossip + " with " + msg.random celebrities
      gossip = gossip + " over " + msg.random excusesDueToFate

    if dice is 3
      # fed was activitying in location with object
      gossip = thisFed + " was " + msg.random activitiesADeux
      gossip = gossip + " in " + msg.random locations
      gossip = gossip + " with " + msg.random objects

    if dice is 4
      # celebrity told the papers that fed was activitying object in location because of excuse
      gossip = msg.random celebrities
      gossip = gossip + " told the papers that " + thisFed + " was " + msg.random activitiesSolo
      gossip = gossip + " " + msg.random objects
      gossip = gossip + " in " + msg.random locations
      gossip = gossip + " because of " + msg.random excusesDueToFate

    if dice is 5
      # apparently object was the reason fed was activitying with celebrity
      gossip = "apparently " + msg.random objects
      gossip = gossip + " was the reason " + thisFed
      gossip = gossip + " was "  + msg.random activitiesADeux
      gossip = gossip + " with " + msg.random celebrities

    if dice is 6
      # fed and celebrity were activitying with object
      gossip = thisFed + " and " + msg.random celebrities
      gossip = gossip + " were "  + msg.random activitiesADeux
      gossip = gossip + " with " + msg.random objects

    msg.send gossip
