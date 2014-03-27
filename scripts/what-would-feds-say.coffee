# Description:
#   What would feds say?
#
# Commands:
#   what would feds say - Get a random fed quote

module.exports = (robot) ->

  fedQuotes = [
    '"Mustache is the biggest pile of steaming turd I have ever had the pleasure of using." - Glynn Phillips',
    '"Having back problems - will be in soon." - Jack Watkins',
    '"Me, Phil and Rowan know people in there. Watch what you say. Or we\'ll get you knee-capped." - Perry Harlock',
    '"Im still sick and so will be WFH today.Where I can cough and splutter to my hearts content." - Adam Tavener'
  ]

  robot.hear /what would feds say|wwfs/i, (msg) ->
    msg.send msg.random fedQuotes
