# Description:
#   List all users who have been seen by hubot
#
# Commands:
#   hubot list users - list all users who have been seen by hubot
#

module.exports = (robot) ->

  robot.respond /list users/i, (msg) ->
    msg.send (user.name for id, user of robot.brain.data.users).sort().join('\n')
