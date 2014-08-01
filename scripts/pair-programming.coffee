# Description:
#   Pair programming
#
# Commands:
#   None
#

module.exports = (robot) ->
  robot.hear /\bpair\sprogramming\b/i, (msg) ->
    msg.send 'http://cdn.gifbay.com/2013/07/everyone_in_britain_right_now-67426.gif'
