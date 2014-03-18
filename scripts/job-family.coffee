# Description:
#   Suggest a job family
#
# Commands:
#   hubot suggest a job family - Displays a suggested job family

module.exports = (robot) ->

  part1 = [
    'back',
    'client',
    'front',
    'middle',
    'server',
  ]

  part2 = [
    'end',
    'side',
  ]

  part3 = [
    'architect',
    'designer',
    'developer',
    'engineer',
  ]

  robot.respond /suggest a job( family)?$/i, (msg) ->
    job = msg.random(part1) + '-' + msg.random(part2) + ' ' + msg.random(part3)
    msg.send job
