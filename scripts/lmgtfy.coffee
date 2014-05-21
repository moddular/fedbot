# Description:
#   Fedbot will Google anything for you
#
# Commands:
#   fedbot what's/what is [x]
#

module.exports = (robot) ->
  robot.respond /what( is|\'s) ([a-z0-9\s\-]+)/i, (msg) ->
    q = msg.match[2].toLowerCase()
    if q != 'on kerb' && q != 'the definition of done'
      msg.send "http://www.lmgtfy.com?q=#{q}"

