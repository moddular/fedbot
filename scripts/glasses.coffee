# Description:
#   Get an animal wearing glasses
#
# Commands:
#   hubot glass me - Grab a random GIF from http://animalswithglasses.tumblr.com/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  require('../lib/me-tumblr')({
    robot: robot,
    name: 'glass',
    tumblr: 'animalswithglasses.tumblr.com',
    selector: '#main .typePhoto img'
  })
