# Description:
#   Get a random GIF
#
# Commands:
#   hubot gif me - Grab a random GIF from http://www.reddit.com/r/gifs/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  require('./helpers/me-reddit')({
    robot: robot,
    name: 'gif',
    subreddit: 'gifs'
  })
