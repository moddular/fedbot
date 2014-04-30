# Description:
#   What would Jude say?
#
# Commands:
#   what would jude say - Get a random Jude quote

module.exports = (robot) ->

  judeQuotes = [
    '...no bad thing, because OOCSS is awesome.'
    'Can\'t make it. Shin splints'
    'Cold, headache, low blood sugar. Not on top form.'
    'Don\'t touch anything within 3 metres of my desk (including Nick)'
    'Double Jack and diet please'
    'Everybody dies'
    'For future reference - please only ever use lowercase for branch names.'
    'Have I told you about my "low hanging fruit"?'
    'I [...] propose Friday 13th... because nothing could possibly go wrong on that date. Count me in.'
    'I almost had a little chubby on during that meeting'
    'I am providing absolutely no value whatsoever atm. Packing up, going home.'
    'I am very much looking forward to my first day.'
    'I have an MRI at the NHNN, where they\'re going to INJECT me with a POISON.'
    'I want someone who either has experience using OOCSS, or will be open-minded enough to fall in love'
    'I\'ve found it INSANELY wonderful, and I\'m completely in love with it ... Actually ... it\'s less that I\'m in love with *it*, and more that I\'m in love with *your use of it*.'
    'Jesus. I am sweating like a paedo at band camp.'
    'Low blood sugar, yadda yadda'
    'MNGH!!!'
    'My hands hurt, my trochanteric bursitis hurts, I\'ve borked my knee - which hurts, my neuropathy hurts, my shin splints hurt, my feet hurt, I\'ve sprained my index finger (that hurts), I\'m too warm, I have a cold, I can\'t concentrate, and I only had 3 hours sleep last night.'
    'New rule: NO ONE IS ALLOWED TO TAKE ELECTRONIC DEVICES TO PUBS.'
    'Not in this morning. ill'
    'Not my fault!'
    'Oi! Not my fault!\n\n... at least, mostly not my fault.\n\nOr - in other words - partially my fault.\n\nOK. My fault.'
    'OOCSS means you\'ll never have to.'
    'Phew, back to reality. That was hardcore. I was off my face. The world was spinning, I was twitching and hallucinating.'
    'Someone take the donuts off me, BEFORE I DIE. I WILL eat all of them, probably within the hour. You do know that, right?'
    'Stay away from me when I\'m in, I\'m a sweaty mischief'
    'That is not the Legacy architecture. It\'s *a* legacy architecture.'
    'There are Krispy Kreme donuts on my desk. Stop me eating them.'
    'THIS ISN\'T THE FUTURE I WAS PROMISED. WHERE ARE THE HOVER CARS AND THE ROBOT SERVANTS?'
    'Understanding regular expressions aids you greatly as a developer.'
    'Up all night, blood sugar yo-yoing'
    'Uranus is larger than Venus. I\'ve seen it through the naked eye.'
    'very low blood sugar (less than 3). Not functioning very well'
    'What a wonderful week. I am most impressed by the great things that so many of you did. (I\'m not high, this comes from the heart of my bottom).'
    'Yeah, I\'ll make it a bit less penisy.'
    'You go to the pub. I\'ll catch you up'
  ]

  robot.hear /what would jude say|wwjs/i, (msg) ->
    msg.send msg.random judeQuotes
