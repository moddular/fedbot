# Description:
#   Get an animal sitting on a Capybara
#
# Commands:
#   hubot capybara me - Grab a random GIF from http://animalssittingoncapybaras.tumblr.com/
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  require('./helpers/me-tumblr')({
    robot: robot,
    name: 'capybara',
    tumblr: 'animalssittingoncapybaras.tumblr.com',
    selector: '#blog .post .image'
  })
