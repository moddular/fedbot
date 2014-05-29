# Description:
#   Respond to questions about what the problem is
#
# Commands:
#   None

module.exports = (robot) ->
  robot.hear /what('s| is| are)? the problems? with ([^.?]+?)( is| are)?\??$/i, (msg) ->
    problemItem = msg.match[2]
    msg.send "The problem with #{problemItem}? Probably only has 8MB of RAM left."