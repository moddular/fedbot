# Description:
#   How about no.
#
# Commands:
#   None

module.exports = (robot) ->
  robot.hear /\bhow about no\b/i, (msg) ->
    msg.send 'http://asset-0.soup.io/asset/6673/2409_0939_400.gif'
