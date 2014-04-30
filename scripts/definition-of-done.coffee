# Description:
#   What's the definition of done?
#
# Commands:
#   hubot what's the definition of done? - get an answer
#

module.exports = (robot) ->

  responses = [
    'Nobody knows...'
    'Don\'t ask me!'
    '*shrugs*'
    'Who the hell knows?'
    'Does not compute...'
    'I don\'t know'
    'Beats me'
    'Ask Jose'
  ]

  robot.respond /what('?s| is) the definition of done\??/i, (msg) ->
    msg.send msg.random responses
