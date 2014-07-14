# Description:
#   Get all your FED images
#
# Commands:
#   hubot fed me - Get a random FED image
#   hubot fed bomb N - Get N random FED images
#
# Author:
#   rowanmanning

randomBetween = require('../lib/random').randomBetween

module.exports = (robot) ->

  request = require 'request'

  require('../lib/me-static')(robot, 'fed', [

    # Group
    'http://i.imgur.com/aZNXXDQ.jpg' # Christmas Party #1
    'http://i.imgur.com/s5fHyVW.jpg' # Christmas Party #2
    'http://i.imgur.com/UZyrj3N.jpg' # Christmas Party #3
    'http://i.imgur.com/zRclqdO.jpg' # Christmas Party #4

    # Adam
    'http://i.imgur.com/bdW4hXx.jpg' # Predator
    'http://i.imgur.com/8DrBegi.jpg' # Doge
    'http://i.imgur.com/n9U67oh.png' # Nap
    'http://i.imgur.com/9tXA60K.jpg' # Fruity

    # Alex
    'http://i.imgur.com/2g54UQM.jpg' # Hot Tub

    # Andrew
    'http://i.imgur.com/pPGuifS.jpg' # Pink Hair
    'http://i.imgur.com/wKnaB4C.jpg' # Blue Hair

    # Glynn
    'http://i.imgur.com/hO44HNU.jpg' # Broken Bunny Ears

    # Jose
    'http://i.imgur.com/1IpgJ8j.jpg' # Thoughtful Jose
    'http://i.imgur.com/Tcymylr.jpg' # Bunny

    # Jude
    'http://i.imgur.com/Tfq7Bi7.gif' # Judehoff
    'http://i.imgur.com/L4zFfLZ.jpg' # Tanned
    'http://i.imgur.com/WtLNSUa.jpg' # Suit
    'http://i.imgur.com/hNPNfav.jpg' # Carrier Bag
    'http://i.imgur.com/5Y3vocd.png' # Doge,
    'http://i.imgur.com/zEEPSwd.jpg' # Jude-as-Devil
    'http://i.imgur.com/KTeb28x.jpg' # Hench

    # Laura
    'http://i.imgur.com/34Qq17u.jpg' # Egg Eyes
    'http://i.imgur.com/EN8Iptr.jpg' # Hench

    # Nick
    'http://i.imgur.com/khW3ahU.jpg' # Boa and Shades

    # Perry
    'http://i.imgur.com/16VJ5wf.gif' # Blah Blah Blah
    'http://i.imgur.com/nkQyVr4.gif' # Cheese
    'http://i.imgur.com/iggvxTH.jpg' # Blue Hair
    'http://i.imgur.com/fzpsMDJ.jpg' # Doge
    'http://i.imgur.com/oWVz6NR.jpg' # Head-Wound
    'http://i.imgur.com/1eaSCnk.jpg' # Harlock Family
    'http://i.imgur.com/CdDLhxl.gif' # Dancing Grandad

    # Phil
    'http://i.imgur.com/8TEzjoT.jpg' # D. Wain Portrait
    'http://i.imgur.com/9NZBMMS.png' # Nap
    'http://i.imgur.com/SlOsvRP.jpg' # Swear

    # Rowan
    'http://i.imgur.com/873UUyQ.jpg' # Blurry Shades
    'http://i.imgur.com/1cup7HH.jpg' # Pink Hat
    'http://i.imgur.com/sxGC6Sh.jpg' # Starred up
    'http://i.imgur.com/N1jvRz1.jpg' # 1300 stars

  ])

  stars = [
    'http://i.imgur.com/sxGC6Sh.jpg'
    'http://i.imgur.com/N1jvRz1.jpg'
  ]

  naps = [
    'http://i.imgur.com/n9U67oh.png'
    'http://i.imgur.com/9NZBMMS.png'
  ]

  robot.hear /\bfried eggs?\b/i, (msg) ->
    msg.send 'http://i.imgur.com/34Qq17u.jpg'

  robot.hear /\bcheese\b/i, (msg) ->
    msg.send 'http://i.imgur.com/nkQyVr4.gif'

  robot.hear /\bbunn(y|ies)\b/i, (msg) ->
    if /\bjose\b/i.test msg.message.text
      msg.send 'http://i.imgur.com/Tcymylr.jpg'

  robot.hear /\b(jude?oge|jude doge|tramadol)\b/i, (msg) ->
    msg.send 'http://i.imgur.com/5Y3vocd.png'

  robot.hear /\bh[au]ng\s?over\b/i, (msg) ->
    msg.send 'http://i.imgur.com/fzpsMDJ.jpg'

  robot.hear /\b(12|twelve)\s?pints?\b/i, (msg) ->
    msg.send 'http://i.imgur.com/8DrBegi.jpg'

  robot.hear /\b13\d\d[\s\-]stars?\b/i, (msg) ->
    msg.send msg.random stars

  robot.hear /\b(nap|sleep|snooze|(40|forty)[\s\-]winks|shut[\s\-]?eye|zzz+)\b/i, (msg) ->
    msg.send msg.random naps

  robot.hear /\brepo(sitory)?\b/i, (msg) ->
    if randomBetween(1, 3) is 1
      msg.send 'http://i.imgur.com/As0OCA9.png'

  robot.hear /\b(hot[\s-]?tub|jacuzzi|savil+e)\b/i, (msg) ->
    msg.send 'http://i.imgur.com/2g54UQM.jpg'

  robot.hear /\bharlock+(s|\sfamily)\b/i, (msg) ->
    msg.send 'http://i.imgur.com/1eaSCnk.jpg'

  robot.hear /\bfruity\b/i, (msg) ->
    msg.send 'http://i.imgur.com/9tXA60K.jpg'

  robot.hear /\b1300\b/i, (msg) ->
    callback = undefined
    options = undefined
    total = 0
    callback = (error, response, body) ->
      body = JSON.parse(body)
      if not error and response.statusCode is 200
        i = 0

        while body.length > i
          total = total + body[i].stargazers_count
          i++
        msg.send "Come on #{msg.message.user.name} Rowan actually has #{total} stars"

    options =
      url: 'https://api.github.com/users/rowanmanning/repos'
      headers:
        'User-Agent': 'request'

    request options, callback
