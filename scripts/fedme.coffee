# Description:
#   Get all your FED images
#
# Commands:
#   hubot fed me - Get a random FED image
#   hubot fed bomb N - Get N random FED images
#
# Author:
#   rowanmanning

module.exports = (robot) ->

  require('../lib/me')(robot, 'fed', [

    # Group
    'http://i.imgur.com/aZNXXDQ.jpg', # Christmas Party #1
    'http://i.imgur.com/s5fHyVW.jpg', # Christmas Party #2
    'http://i.imgur.com/UZyrj3N.jpg', # Christmas Party #3
    'http://i.imgur.com/zRclqdO.jpg', # Christmas Party #4

    # Adam
    'http://i.imgur.com/bdW4hXx.jpg', # Predator
    'http://i.imgur.com/8DrBegi.jpg', # Doge

    # Andrew
    'http://i.imgur.com/pPGuifS.jpg', # Pink Hair
    'http://i.imgur.com/wKnaB4C.jpg', # Blue Hair

    # Glynn
    'http://i.imgur.com/hO44HNU.jpg', # Broken Bunny Ears

    # Jose
    'http://i.imgur.com/1IpgJ8j.jpg', # Thoughtful Jose
    'http://i.imgur.com/Tcymylr.jpg', # Bunny

    # Jude
    'http://i.imgur.com/Tfq7Bi7.gif', # Judehoff
    'http://i.imgur.com/L4zFfLZ.jpg', # Tanned
    'http://i.imgur.com/WtLNSUa.jpg', # Suit
    'http://i.imgur.com/hNPNfav.jpg', # Carrier Bag
    'http://i.imgur.com/5Y3vocd.png', # Doge,
    'http://i.imgur.com/zEEPSwd.jpg', # Jude-as-Devil
    'http://i.imgur.com/KTeb28x.jpg', # Hench

    # Laura
    'http://i.imgur.com/34Qq17u.jpg', # Egg Eyes
    'http://i.imgur.com/EN8Iptr.jpg', # Hench

    # Nick
    'http://i.imgur.com/khW3ahU.jpg', # Boa and Shades

    # Perry
    'http://i.imgur.com/16VJ5wf.gif', # Blah Blah Blah
    'http://i.imgur.com/nkQyVr4.gif', # Cheese
    'http://i.imgur.com/iggvxTH.jpg', # Blue Hair
    'http://i.imgur.com/fzpsMDJ.jpg', # Doge

    # Phil
    'http://i.imgur.com/8TEzjoT.jpg', # D. Wain Portrait

    # Rowan
    'http://i.imgur.com/873UUyQ.jpg', # Blurry Shades
    'http://i.imgur.com/1cup7HH.jpg', # Pink Hat

  ])

  robot.hear /\bfried eggs?\b/i, (msg) ->
    msg.send "http://i.imgur.com/34Qq17u.jpg"

  robot.hear /\bcheese\b/i, (msg) ->
    msg.send "http://i.imgur.com/nkQyVr4.gif"

  robot.hear /\bbunn(y|ies)\b/i, (msg) ->
    if /\bjose\b/i.test msg.message.text
      msg.send "http://i.imgur.com/Tcymylr.jpg"

  robot.hear /\b(jude?oge|jude doge|tramadol)\b/i, (msg) ->
    msg.send "http://i.imgur.com/5Y3vocd.png"

  robot.hear /\bh[au]ng\s?over\b/i, (msg) ->
    msg.send "http://i.imgur.com/fzpsMDJ.jpg"

  robot.hear /\b(12|twelve)\s?pints?\b/i, (msg) ->
    msg.send "http://i.imgur.com/8DrBegi.jpg"
