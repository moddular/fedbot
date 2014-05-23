# Description:
#   Get code reviews from FEDbot
#
# Commands:
#   None
#

module.exports = (robot) ->

  responses = [
    'Looks great, feel free to merge'
    'Excellent work, merge it!'
    'Well done, that\'s ready to merge'
    'Nice one. Press the green button!'
    'Merge it'
    'Ship it'
    'Good work, merge when ready'
  ]

  robot.respond /(pr|cr|code[-\s]review) me (https?:\/\/[^\s]+)$/i, (msg) ->
    msg.reply msg.random responses
