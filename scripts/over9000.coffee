# Description:
#   It's over 9000!!
#
# Commands:
#   None
#

module.exports = (robot) ->
  robot.hear /\bover 9000\b/i, (msg) ->
    msg.send 'http://24.media.tumblr.com/tumblr_m0286a436Q1qfqcq8o1_500.gif'
