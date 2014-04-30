# Description:
#   Get a baby elephant
#
# Commands:
#   hubot baby elephant me - Grab a random GIF from http://www.reddit.com/r/babyelephantgifs/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  me = require '../lib/me-reddit'
  me({
    robot: robot,
    name: 'baby elephant',
    subreddit: 'babyelephantgifs'
  })
  me({
    robot: robot,
    name: 'elephant',
    subreddit: 'babyelephantgifs'
  })
