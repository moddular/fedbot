# Description:
#   Get all your oompa loompa images
#
# Commands:
#   hubot oompa loompa me - Get a random oompa loompa image
#   hubot oompa loompa bomb N - Get N oompa loompa images
#
## Author:
#   perryharlock

module.exports = (robot) ->
  require('../lib/me-static')(robot, 'oompa loompa', [
    'http://i.imgur.com/XrbkNVe.jpg' # Adam
    'http://i.imgur.com/JvJxPlz.jpg' # Lisa
    'http://i.imgur.com/Mrd5Apn.jpg' # Jude
    'http://i.imgur.com/eOWeQQp.jpg' # Glynn
    'http://i.imgur.com/lIE7KnC.jpg' # Hollie
    'http://i.imgur.com/K93CfhC.jpg' # Laura
    'http://i.imgur.com/RFRXZKN.jpg' # Alex
    'http://i.imgur.com/l0YXwd2.jpg' # Phil
    'http://i.imgur.com/KNfMVtA.jpg' # Rowan
    'http://i.imgur.com/9atzwFP.jpg' # Jose
    'http://i.imgur.com/MZtvuUW.jpg' # Nick
    'http://i.imgur.com/07dYBBm.jpg' # Andrew
    'http://i.imgur.com/EKWVfQ6.jpg' # Dan
    'http://i.imgur.com/3G6yPST.png' # Perry
    'http://i.imgur.com/yuzcaIv.jpg' # Jansher
    'http://i.imgur.com/V95JnR9.jpg' # Luke
    'http://distilleryimage4.ak.instagram.com/b2ea48f4ccb411e3a71c0002c954b60c_8.jpg' # Adam
    'http://distilleryimage2.ak.instagram.com/a2497c0ccca711e3a44d0002c954aa76_8.jpg' # Perry/Alex
    'http://i.imgur.com/UnDa9xd.gif' # Perry/Adam
  ])
