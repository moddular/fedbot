# Description:
#   Force Push
#
# Commands:
#   hubot force push me - Get a random force push image
#   hubot force push bomb N - Get N force push images

module.exports = (robot) ->
  require('../lib/me-static')(robot, 'force push', [
    'http://24.media.tumblr.com/c5c9e3f3b6fcb58ec6e3bddab96e3a3a/tumblr_ms1foiogg01qkuvcro1_400.gif'
    'http://4.bp.blogspot.com/-qsvZBinyHc8/UxD3Pup0XxI/AAAAAAAADjg/twDWGtzf6tc/s1600/tumblr_luaj77Qaoa1qzrlhgo1_400%5B1%5D.gif'
    'http://i.imgur.com/cuPWqZp.gif'
    'http://i.imgur.com/ZvZR6Ff.jpg'
    'http://i1.kym-cdn.com/photos/images/masonry/000/014/888/1181688784694.gif'
    'http://i1.kym-cdn.com/photos/images/newsfeed/000/564/315/600.gif'
    'http://i167.photobucket.com/albums/u123/KevinB550/FORCEPUSH/ForcePush-2.gif'
    'http://i167.photobucket.com/albums/u123/KevinB550/FORCEPUSH/starwarsagain.gif'
    'http://i2.kym-cdn.com/photos/images/newsfeed/000/218/089/tumblr_lwa2m3XLOT1qc2qk9o1_400.gif'
    'http://images.figure.fm/cgm/images/post/20100730/14068/111752/large/d172e9c70fabcf1f34e091ff8b2f3efd.gif'
    'http://static.fjcdn.com/gifs/Force_081d59_667782.gif'
  ])
