# Description:
#   Help out with charitable decisions
#
# Commands:
#   hubot what should I do for charity? - Get help with charitable decisions
#

module.exports = (robot) ->

  options = [
    'chucking a bucket of water on yourself'
    'shaving your hair off'
    'hitting yourself in the bollocks with a mallet'
    'stripping naked in public'
    'a 20 mile bike ride'
    'abseiling down the Shard'
    'a 5k run'
    'punching your desk buddy in the face'
  ]

  charities = [
    'Macmillan Cancer Research'
    'Motor Neurone Disease'
    'Oxfam'
    'WaterAid'
    'your local donkey sanctuary'
  ]

  prefixes = [
    'Why not try'
    'Maybe'
    'Perhaps'
    'How about'
  ]

  chooseOption = (msg) ->
    prefix = msg.random(prefixes)
    option = msg.random(options)
    charity = msg.random(charities)
    return "#{prefix} #{option} for #{charity}?"

  robot.respond /what (should|shall) (we|i) do for charity\??/i, (msg) ->
    msg.send chooseOption(msg)
