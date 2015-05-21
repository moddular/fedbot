# Description:
#   What does Phil think of Grunt?
#
# Commands:
#   None

randomBetween = require('./helpers/random').randomBetween

module.exports = (robot) ->
  robot.hear /\bgrunt\b/i, (msg) ->
    if randomBetween(1, 5) is 1
      msg.send 'Who mentioned Grunt!?', 'http://i.imgur.com/077Skti.jpg'
