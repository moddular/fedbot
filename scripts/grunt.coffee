# Description:
#   What does Phil think of Grunt?
#
# Commands:
#   None

module.exports = (robot) ->
  robot.hear /\bgrunt\b/i, (msg) ->
    msg.send 'Who mentioned Grunt!?', 'http://i.imgur.com/077Skti.jpg'
