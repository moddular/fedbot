# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - Reply with pong
#   hubot die - End hubot process

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send 'PONG'

  robot.respond /are you (alive|ok)\??$/i, (msg) ->
    msg.send 'Yes, why?'

  robot.respond /DIE$/i, (msg) ->
    msg.send 'Goodbye, cruel world.'
    process.exit 0
