# Description:
#   Fedbot will Google anything for you
#
# Commands:
#   fedbot what's/what is [x] or what does [x] mean
#

module.exports = (robot) ->
  robot.respond /what( is|\'s) ([a-z0-9\s\-]+)/i, (msg) ->
    q = msg.match[2].toLowerCase()
    if q != 'on kerb' && q != 'the definition of done'
      q = q.replace(/\s/g, '%20')
      msg.send "http://www.lmgtfy.com?q=#{q}"

  robot.respond /what does ([a-z0-9\s\-]+) mean?/i, (msg) ->
    q = msg.match[1].toLowerCase().replace(/\s/g, '%20')
    msg.send "http://www.lmgtfy.com?q=#{q}"

