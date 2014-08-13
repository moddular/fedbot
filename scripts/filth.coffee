# Description:
#   The Filth Wizard
#
# Commands:
#   None
#

module.exports = (robot) ->
  robot.hear /filth\swizard/i, (msg) ->
    msg.send 'http://i.imgur.com/C907Bdg.png'
