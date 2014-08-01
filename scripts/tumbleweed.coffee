# Description:
#   *tumbleweed*
#
# Commands:
#   None
#

module.exports = (robot) ->
  robot.hear /\btumble\s?weeds?/i, (msg) ->
    msg.send 'http://i.imgur.com/iigVfbC.gif'
