# Description:
#   Get a random hedgehog
#
# Commands:
#   hubot hedgehog me - Grab a random image from http://hedgieshedgieshedgies.tumblr.com/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  me = require './helpers/me-tumblr'
  me({
    robot: robot,
    name: 'hog',
    tumblr: 'hedgieshedgieshedgies.tumblr.com',
    selector: '.contentBlock img'
  })
  me({
    robot: robot,
    name: 'hedgehog',
    tumblr: 'hedgieshedgieshedgies.tumblr.com',
    selector: '.contentBlock img'
  })
