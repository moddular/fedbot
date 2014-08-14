# Description:
#   The Filth Wizard
#
# Commands:
#   None
#

module.exports = (robot) ->
  robot.hear /filth(\s|-)wizard/i, (msg) ->
    msg.send 'http://i.imgur.com/C907Bdg.png'
