# Description:
#   Get FEDbot stats
#
# Commands:
#   hubot stats - Displays FEDbot statistics
#

numeral = require 'numeral'

module.exports = (robot) ->

  statsRegexp = new RegExp('^\\\^\\\[@\\\]\\\?' + robot.name + '\\\[:,\\\]\\\?\\\\s\\\*', 'i')

  robot.respond /stats$/i, (msg) ->
    stats = calculateStats()
    msg.send """
      Commands:      #{stats.commands}
      Non-commands:  #{stats.nonCommands}
      Me-scripts:    #{stats.meScripts}
      Swear-jar:     £#{stats.swearJar}
      Known users:   #{stats.knownUsers}
      Non-strangers: #{stats.nonStrangers}
    """

  calculateStats = ->
    stats = {
      commands: []
      nonCommands: []
      meScripts: robot.meScriptCount
      swearJar: numeral(robot.brain.get('swearJar')?.amount || 0).format('0,0.00')
      knownUsers: Object.keys(robot.brain.users()).length
      nonStrangers: robot.brain.get('nonStrangers')?.length || 0
    }
    for listener in robot.listeners
      if !listener.regex
        stats.nonCommands.push listener
      else
        isCommand = statsRegexp.test(listener.regex.source)
        if isCommand
          stats.commands.push listener
        else
          stats.nonCommands.push listener
    stats.commands = stats.commands.length
    stats.nonCommands = stats.nonCommands.length
    stats
