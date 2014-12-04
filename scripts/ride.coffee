# Description:
#   Get an animal riding an animal
#
# Commands:
#   hubot ride me - Grab a random image from http://animals-riding-animals.tumblr.com/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  require('./helpers/me-tumblr')({
    robot: robot,
    name: 'ride',
    tumblr: 'animals-riding-animals.tumblr.com',
    selector: '#posts .image img'
  })
