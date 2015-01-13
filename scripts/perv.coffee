# Description:
#   Pervert
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  robot.hear /\bperv(ert|ing|s)?\b/i, (msg) ->
    msg.send msg.random [
      'http://i.imgur.com/mPbiWEC.png'
    ]
