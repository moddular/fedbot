# Description:
#   But why, Jude?
#
# Author:
#   rowanmanning

module.exports = (robot) ->

  responses = [
    'https://31.media.tumblr.com/774e55062d194f675344a96d481a0ce1/tumblr_inline_neuf23BBGl1s7cn4s.gif'
    'http://media.tumblr.com/03e375c069d41dec269ce1ec7dc82470/tumblr_inline_neufci7g6U1s7cn4s.gif'
    'http://gifrific.com/wp-content/uploads/2012/11/Ross-Why-Would-You-Do-That.gif'
    'http://media.tumblr.com/tumblr_lrtu8u9akb1qgy2f0.gif'
    'http://img.pandawhale.com/110882-darkman-why-why-why-why-gif-Im-dExo.gif'
    'http://cdn.agilitycms.com/chill/why_guy.gif'
    'https://cavegirlculture.files.wordpress.com/2014/01/but-why-ogif.gif'
    'http://25.media.tumblr.com/7c70d884a8ff2e7227fd6cda22ebbb7c/tumblr_mguqt2pggp1rlf46eo1_500.gif'
    'https://quizzicalllama.files.wordpress.com/2014/02/why.gif?w=640'
  ]

  robot.hear /\bwhy\b/i, (msg) ->
    if /jude/i.test(msg.message.user.name)
      msg.send msg.random responses
