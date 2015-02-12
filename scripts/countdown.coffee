# Description:
#   Count down to things.
#
# Commands:
#   hubot count down from <seconds> - Count down
#   hubot count down to <thing> from <seconds> - Count down to an event
#   hubot loudly count down from <seconds> - Count down loudly
#   hubot loudly count down to <thing> from <seconds> - Count down to an event loudly
#
# Author:
#   rowanmanning

module.exports = (robot) ->

  things = {
    explosion: 'http://static4.fjcdn.com/thumbnails/comments/3265468+_f1d1c9fdc08b60f35fc3dabc72305aed.gif'
    nuke: 'http://static4.fjcdn.com/thumbnails/comments/3265468+_f1d1c9fdc08b60f35fc3dabc72305aed.gif'
    bomb: 'http://static4.fjcdn.com/thumbnails/comments/3265468+_f1d1c9fdc08b60f35fc3dabc72305aed.gif'
    detonation: 'http://static4.fjcdn.com/thumbnails/comments/3265468+_f1d1c9fdc08b60f35fc3dabc72305aed.gif'
    launch: 'http://stream1.gifsoup.com/view6/2431844/rocket-launch-o.gif'
    lunch: 'LUNCH TIME!'
  }

  createTimer = (opts) ->
    countdown = opts.seconds
    timer = ->
      if countdown <= 0
        if !opts.thing
          robot.messageRoom opts.room, opts.creator + ': COUNTDOWN ENDED'
        else if /^https?\:\/\//.test(opts.thing)
          robot.messageRoom opts.room, opts.creator + ': COUNTDOWN ENDED', opts.thing
        else
          robot.messageRoom opts.room, opts.creator + ': COUNTDOWN ENDED', things[opts.thing.toLowerCase()] || opts.thing
        clearInterval(interval)
      else if opts.isLoud
        robot.messageRoom opts.room, '' + countdown + (if opts.thing then ' seconds until ' + opts.thing else '')
      countdown -= 1
    interval = setInterval(timer, 1000)

  robot.respond /(loudly )?count\s?down( to ([^\s]+))? from (\d+)$/i, (msg) ->
    opts = {
      isLoud: !!msg.match[1]
      thing: msg.match[3] || null
      seconds: parseInt(msg.match[4], 10)
      creator: msg.message.user.name
      room: msg.message.room
    }
    if opts.seconds > 3600
      return msg.send 'I can\'t count down from more than a hour'
    if opts.isLoud && opts.seconds > 10
      return msg.send 'I can\'t loudly count down from more than 10 seconds'
    createTimer(opts)
    msg.send 'Counting down!'
