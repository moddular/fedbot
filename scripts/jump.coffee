# Description:
#   Get an animal who sucks at jumping
#
# Commands:
#   hubot jump me - Grab a random GIF from http://animalssuckingatjumping.tumblr.com/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  require('../lib/me-tumblr')({
    robot: robot,
    name: 'jump',
    tumblr: 'animalssuckingatjumping.tumblr.com',
    selector: '#main article img'
  })
