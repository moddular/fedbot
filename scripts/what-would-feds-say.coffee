# Description:
#   What would feds say?
#
# Commands:
#   what would feds say - Get a random fed quote

module.exports = (robot) ->

  fedQuotes = [
    {
      text: 'Mustache is the biggest pile of steaming turd I have ever had the pleasure of using.'
      name: 'Glynn Phillips'
    }
    {
      text: 'Having back problems - will be in soon.'
      name: 'Jack Watkins'
    }
    {
      text: 'Me, Phil and Rowan know people in there. Watch what you say. Or we\'ll get you knee-capped.'
      name: 'Perry Harlock'
    }
    {
      text: 'I\'m still sick and so will be WFH today. Where I can cough and splutter to my hearts content.'
      name: 'Adam Tavener'
    }
    {
      text: 'Dale is old enough to do his mum.'
      name: 'Perry Harlock'
    }
    {
      text: 'Perry and Alex are the only confirmed non-jaffas here, for all we know the rest of us are firing blanks.'
      name: 'Phil Booth'
    }
    {
      text: 'I know a tramp in Tonbridge who will come up if I buy him food.'
      name: 'Perry Harlock'
    }
    {
      text: 'I once told a teacher that She had lulled us into a false sense of security by giving us an extra weeks extension on an essay and therefore it was her fault that it was late.'
      name: 'Jack Watkins'
    }
    {
      text: 'rape haha'
      name: 'Glynn Phillips'
    }
    {
      text: 'I\'ll do the small one'
      name: 'Rowan Manning'
    }
    {
      text: 'I could see myself sucking on a cock'
      name: 'Rowan Manning'
    }
    {
      text: 'yes, ram me rowan, ram me'
      name: 'Phil Booth'
    }
    {
      text: 'they can get in my face regardless'
      name: 'Hollie Kay'
    }
    {
      text: 'I haven\'t shat myself in years, actually'
      name: 'Phil Booth'
    }
    {
      text: 'and also fuck the oxford comma i don\'t like the look of it'
      name: 'Glynn Phillips'
    }
    {
      text: 'a one on one with Rowan giving me a hand is not the right thing do to'
      name: 'Glynn Phillips'
    }
    {
      text: 'Suddenly the paedophiles are looking quite normal'
      name: 'Alex Kilgour'
    }
  ]

  robot.hear /what would feds say|wwfs/i, (msg) ->
    quote = msg.random fedQuotes
    msg.send "“#{quote.text}” — #{quote.name}"
