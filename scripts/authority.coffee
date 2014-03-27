# Description:
#   You will respect my authoritah!

module.exports = (robot) ->
  robot.hear /\b(authority|authorita+h+)\b/i, (msg) ->
    msg.send 'http://i.imgur.com/NAtS7u3.jpg'
