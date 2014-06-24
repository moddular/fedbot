# Description:
#   Campus...

module.exports = (robot) ->
  robot.hear /\bcampus( digital|\.macmillan)\b/i, (msg) ->
    msg.send 'http://i.imgur.com/oMBWa7L.gif'
