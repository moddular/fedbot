# Description:
#   Get a tl;dr wikipedia page
#
# Commands:
#   hubot wiki me - Grab a random image from http://tldrwikipedia.tumblr.com/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  require('./helpers/me-tumblr')({
    robot: robot,
    name: 'wiki',
    tumblr: 'tldrwikipedia.tumblr.com',
    selector: '#content .post img'
  })
