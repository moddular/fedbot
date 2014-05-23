# Description:
#   What would feds say?
#
# Commands:
#   what would feds say - Get a random fed quote

module.exports = (robot) ->

  fedQuotes = [
    '"Mustache is the biggest pile of steaming turd I have ever had the pleasure of using." - Glynn Phillips'
    '"Having back problems - will be in soon." - Jack Watkins'
    '"Me, Phil and Rowan know people in there. Watch what you say. Or we\'ll get you knee-capped." - Perry Harlock'
    '"I\'m still sick and so will be WFH today. Where I can cough and splutter to my hearts content." - Adam Tavener'
    '"Dale is old enough to do his mum." - Perry Harlock'
    '"Perry and Alex are the only confirmed non-jaffas here, for all we know the rest of us are firing blanks." - Phil Booth'
    '"I know a tramp in Tonbridge who will come up if I buy him food." - Perry Harlock'
    '"I once told a teacher that She had lulled us into a false sense of security by giving us an extra weeks extension on an essay and therefore it was her fault that it was late." - Jack Watkins'
    '"rape haha" - Glynn Phillips'
    '"I\'ll do the small one" - Rowan Manning'
    '"I could see myself sucking on a cock" - Rowan Manning'
    '"yes, ram me rowan, ram me" - Phil Booth'
    '"they can get in my face regardless" - Hollie Kay'
    '"I\'ve not shat myself in years, actually" - Phil Booth'
  ]

  robot.hear /what would feds say|wwfs/i, (msg) ->
    msg.send msg.random fedQuotes
