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
    {
      text: 'I\'m also an all or nothing kind of guy. If you\'re going to roger me, stick it all the way in. Don\'t tickle me round the edges.'
      name: 'Phil Booth'
    }
    {
      text: 'If you went up only 3 inches, you wouldn\'t be able to tell the difference.'
      name: 'Adam Tavener'
    }
    {
      text: 'I burnt more calories getting at the edible parts than I gained from eating them.'
      name: 'Adam Tavener'
    }
    {
      text: 'is there a shitbit? we should get one for jude if there is'
      name: 'Phil Booth'
    }
    {
      text: 'I\'m up for some anal action'
      name: 'Phil Booth'
    }
    {
      text: 'Rowan, if you legitimise this bollocks with your compliance, you will be half the man I thought you were'
      name: 'Phil Booth'
    }
    {
      text: 'He was the one who hit him in the balls with a spanner. He always insisted that is what gave him cancer and remained resentful.'
      name: 'Jack Watkins'
    }
    [
      {
        text: 'I dont believe you Glynn... Is it hairy?'
        name: 'Adam Tavener'
      }
      {
        text: 'Adam yeah it is. Once you get past being weirded out by that though it\'s good.'
        name: 'Glynn Phillips'
      }
    ]
  ]

  robot.hear /what would feds say|wwfs/i, (msg) ->
    chosen = msg.random fedQuotes
    if Array.isArray chosen
      quoteText = []
      quoteText.push("#{quote.name}: “#{quote.text}”") for quote in chosen
      quoteText = quoteText.join '\n'
    else
      quote = chosen
      quoteText = "“#{quote.text}” — #{quote.name}"
    msg.send quoteText
