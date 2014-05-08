# Description:
#   What would Jude say?
#
# Commands:
#   what would jude say - Get a random Jude quote

judeQuotes = [
  {
    text: '...no bad thing, because OOCSS is awesome.'
    keywords: 'oocss code development'
  }
  {
    text: 'Can\'t make it. Shin splints'
    keywords: 'shin shins splints work'
  }
  {
    text: 'Cold, headache, low blood sugar. Not on top form.'
    keywords: 'headache headaches cold colds blood sugar work diabetes'
  }
  {
    text: 'Don\'t touch anything within 3 metres of my desk (including Nick)'
    keywords: 'nick desks desk illness sickness ill sick'
  }
  {
    text: 'Double Jack and diet please'
    keywords: 'pubs pub drink drinks jack diet'
  }
  {
    text: 'Everybody dies'
    keywords: 'death life philosophy'
  }
  {
    text: 'For future reference - please only ever use lowercase for branch names.'
    keywords: 'case lowercase code work git branches branch development'
  }
  {
    text: 'Green: 75%, LibDem: 25%. Although I\'m assuming I must have misread the policies for the issues where I chose LibDem, because I\'d rather sh*t in my hand than vote LibDem.'
    keywords: 'politics policies libdems libdem green shit voting votes vote'
  }
  {
    text: 'Have I told you about my "low hanging fruit"?'
    keywords: 'fruit hanging'
  }
  {
    text: 'I [...] propose Friday 13th... because nothing could possibly go wrong on that date. Count me in.'
    keywords: 'friday date planning plan 13th'
  }
  {
    text: 'I almost had a little chubby on during that meeting'
    keywords: 'meetings meeting chubby'
  }
  {
    text: 'I am providing absolutely no value whatsoever atm. Packing up, going home.'
    keywords: 'value work blood sugar home diabetes'
  }
  {
    text: 'I am very much looking forward to my first day.'
    keywords: 'work'
  }
  {
    text: 'I have an MRI at the NHNN, where they\'re going to INJECT me with a POISON.'
    keywords: 'mri injections injection poison scan scanning illness ill sickness sick'
  }
  {
    text: 'I want someone who either has experience using OOCSS, or will be open-minded enough to fall in love'
    keywords: 'oocss love experience hiring hire open'
  }
  {
    text: 'I\'ve found it INSANELY wonderful, and I\'m completely in love with it ... Actually ... it\'s less that I\'m in love with *it*, and more that I\'m in love with *your use of it*.'
    keywords: 'love'
  }
  {
    text: 'Jesus. I am sweating like a paedo at band camp.'
    keywords: 'paedo paedophilia band camp sweat sweating jesus'
  }
  {
    text: 'Low blood sugar, yadda yadda'
    keywords: 'blood sugar diabetes'
  }
  {
    text: 'MNGH!!!'
    keywords: 'mngh'
  }
  {
    text: 'My hands hurt, my trochanteric bursitis hurts, I\'ve borked my knee - which hurts, my neuropathy hurts, my shin splints hurt, my feet hurt, I\'ve sprained my index finger (that hurts), I\'m too warm, I have a cold, I can\'t concentrate, and I only had 3 hours sleep last night.'
    keywords: 'hands pain trochanteric bursitis hurt knees knee neuropathy shins shin splints feet foot fingers finger warm cold concentration sleep'
  }
  {
    text: 'New rule: NO ONE IS ALLOWED TO TAKE ELECTRONIC DEVICES TO PUBS.'
    keywords: 'pubs pub devices phones phone device rules rule'
  }
  {
    text: 'Not in this morning. ill'
    keywords: 'morning ill sick illness sickness work diabetes'
  }
  {
    text: 'Not my fault!'
    keywords: 'blame fault'
  }
  {
    text: 'Oi! Not my fault!\n\n... at least, mostly not my fault.\n\nOr - in other words - partially my fault.\n\nOK. My fault.'
    keywords: 'blame fault'
  }
  {
    text: 'OOCSS means you\'ll never have to.'
    keywords: 'oocss'
  }
  {
    text: 'Phew, back to reality. That was hardcore. I was off my face. The world was spinning, I was twitching and hallucinating.'
    keywords: 'drugs drug hardcore spinning hallucinating hallucinate twitching'
  }
  {
    text: 'Someone take the donuts off me, BEFORE I DIE. I WILL eat all of them, probably within the hour. You do know that, right?'
    keywords: 'donut doughnut donuts doughnuts death food eating restraint'
  }
  {
    text: 'Stay away from me when I\'m in, I\'m a sweaty mischief'
    keywords: 'sweat sweaty sweating mischief ill illness sickness sick'
  }
  {
    text: 'That is not the Legacy architecture. It\'s *a* legacy architecture.'
    keywords: 'legacy architecture'
  }
  {
    text: 'There are Krispy Kreme donuts on my desk. Stop me eating them.'
    keywords: 'donut donuts doughnuts doughnut desk food eating restraint krispy kreme'
  }
  {
    text: 'THIS ISN\'T THE FUTURE I WAS PROMISED. WHERE ARE THE HOVER CARS AND THE ROBOT SERVANTS?'
    keywords: 'future hover cars car robot robots servants servant promises promise'
  }
  {
    text: 'Understanding regular expressions aids you greatly as a developer.'
    keywords: 'work code development regexp regex regular expressions developer developers'
  }
  {
    text: 'Up all night, blood sugar yo-yoing'
    keywords: 'blood sugar diabetes sleep'
  }
  {
    text: 'Uranus is larger than Venus. I\'ve seen it through the naked eye.'
    keywords: 'uranus venus planets planet space naked eye eyes size'
  }
  {
    text: 'very low blood sugar (less than 3). Not functioning very well'
    keywords: 'blood sugar diabetes'
  }
  {
    text: 'What a wonderful week. I am most impressed by the great things that so many of you did. (I\'m not high, this comes from the heart of my bottom).'
    keywords: 'high bottom praise heart'
  }
  {
    text: 'Yeah, I\'ll make it a bit less penisy.'
    keywords: 'penises penis'
  }
  {
    text: 'You go to the pub. I\'ll catch you up'
    keywords: 'pub pubs'
  }
]

randomValue = require('../lib/random').randomValue

whatWouldJudeSay = (quotes, context) ->
  quotes = filterQuotesByContext(quotes, context) if context
  randomValue quotes

filterQuotesByContext = (quotes, context) ->
  context = buildContextRegexp(context)
  (quote for quote in quotes when context.test quote.keywords)

buildContextRegexp = (context) ->
  contextArray = context.toLowerCase().replace(/[^a-z0-9\s\-]+/, '').split(/\s+/)
  new RegExp "\\b(#{contextArray.join('|')})\\b", 'gi'

module.exports = (robot) ->
  robot.hear /(what would jude say|wwjs)( about (.*)$)?/i, (msg) ->
    context = msg.match[3]
    quote = whatWouldJudeSay judeQuotes, context
    if quote
      msg.send quote.text
    else
      msg.send "Jude would have nothing to say about \"#{context}\""
