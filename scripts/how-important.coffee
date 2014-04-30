# Description:
#   Ask hubot how important things are
#
# Commands:
#   hubot how important is <x>? - Ask how important something is
#

module.exports = (robot) ->
  robot.respond /how important (is|are) /i, (msg) ->
    msg.send 'Business are aware of it and is at low priority because of effort involved'
