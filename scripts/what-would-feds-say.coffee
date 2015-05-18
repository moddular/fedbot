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
    {
      text: 'before I knew about the holocaust I always prefered the german soldiers in my set of toy soldiers'
      name: 'Jack Watkins'
    }
    {
      text: 'oh you wouldn\'t catch Hitler playing jungle music at 4 in the morning.'
      name: 'Jack Watkins'
    }
    {
      text: 'You\'d make a great hooker, Phil'
      name: 'Rowan Manning'
    }
    [
      {
        text: 'i was a shepherd and got told off for playing with my willy on stage\nit was the second-to-last time i ever played with my willy on stage in fronts of lots of people'
        name: 'Phil Booth'
      }
      {
        text: 'phil will you play with your willy when we perfom the big lebowski?'
        name: 'Adam Tavener'
      }
    ]
    {
      text: 'yep, I told them my face is too big'
      name: 'Rowan Manning'
    }
    {
      text: 'Well, if the blond young waitress bites half of my sausage I probably wouldn\'t mind'
      name: 'Jose Bolos'
    }
    {
      text: 'I did art A level and I can tell you with authority that is shit'
      name: 'Nick Call'
    }
    {
      text: 'It\'s tiny'
      name: 'Glynn Phillips'
    }
    {
      text: 'The Charles is the devtoilet of pubs'
      name: 'Jose Bolos'
    }
    {
      text: 'Rowan come over here and touch it, see if it feels like flesh'
      name: 'Andrew Mee'
    }
    {
      text: 'I fancy a :poop: in an altmetrics donut'
      name: 'Hollie Kay'
    }
    {
      text: 'I think I\'ve eaten a lot of fly poop in my time.'
      name: 'Jack Watkins'
    }
    {
      text: 'but it does grow fast and thick'
      name: 'Glynn Phillips'
    }
    {
      text: 'I wipe my balls with this'
      name: 'Hollie Kay'
    }
    {
      text: 'Never go near the arse end of anything on your wedding day'
      name: 'Glynn Phillips'
    }
    {
      text: 'Because kids are hard.'
      name: 'Alex Kilgour'
    }
    {
      text: 'not as big as it looks'
      name: 'Adam Tavener'
    }
    {
      text: 'Glynn it helps if you keep it in your throat for a while'
      name: 'Hollie Kay'
    }
    {
      text: 'fuck dalston and fuck all of those people'
      name: 'Hollie Kay'
    }
    {
      text: 'I dont think I can come because its raining and I have a suede coat'
      name: 'Jack Watkins'
    }
    {
      text: 'Gosh, that\'s big.'
      name: 'Kathleen James'
    }
    {
      text: 'I am a horrible perv'
      name: 'Glynn Phillips'
    }
    {
      text: 'I think Rowan still have some around his mouth'
      name: 'Glynn Phillips'
    }
    {
      text: 'I need to start sniffing Jansher more'
      name: 'Andrew Mee'
    }
    {
      text: 'I\'m curious about my sexuality'
      name: 'Adam Tavener'
    }
    {
      text: 'I *do* love you and would give you my virgin children as your playthings'
      name: 'Kathleen James'
    }
    {
      text: 'One day after a conservative election victory and already the trains are screwed. This country is going to the dogs.'
      name: 'Alex Kilgour'
    }
    {
      text: 'I HOPE HE GETS GOUT AND THEN GANGRENE ON HIS GOUT.'
      name: 'Hollie Kay'
    }
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
