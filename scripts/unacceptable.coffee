# Description:
#   Unacceptable!

createImageListPage = require './helpers/http-image-list'

module.exports = (robot) ->

  responses = [
    'http://img1.wikia.nocookie.net/__cb20130823061653/adventuretimewithfinnandjake/images/6/6b/S5e31_Unacceptable.gif'
    'http://media.tumblr.com/26cb6d45aa6cd30439e61a5be1f67b58/tumblr_inline_mwj37gW4QF1r73ga0.gif'
    'http://media.tumblr.com/c463795b1a9ece62b93c2a7993d28d6e/tumblr_inline_n3rqdmRgm21sohk3w.gif'
    'http://media.tumblr.com/tumblr_m7ndxxt7W21r208ff.gif'
    'http://media0.giphy.com/media/17DRws1Yqw36w/giphy.gif'
    'http://static.giantbomb.com/uploads/original/14/147065/2584173-2222274651-tumbl.gif'
    'http://www.videogameologists.com/wp-content/uploads/2013/05/adventuretime-lemongrab-unacceptable.gif'
  ]

  robot.hear /\b(un+|not )(ac+eptable)\b/i, (msg) ->
    msg.send msg.random responses

  createImageListPage(
    robot,
    '/unacceptable',
    'Unacceptable images',
    'A list of all the unacceptable images:',
    responses
  )
