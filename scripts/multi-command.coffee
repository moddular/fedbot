# Description:
#   Execute a command multiple times
#
# Commands:
#   hubot x<n> <command> - Execute <command> <n> times (up to 5 times)
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  robot.respond /x(\d+) (.+)$/i, (msg) ->
    times = Math.max(Math.min(parseInt(msg.match[1], 10), 5), 1)
    msg.message.text = "#{robot.name} #{msg.match[2]}"
    robot.receive(msg.message) for i in [1..times]
    msg.message.done = true
