# Description:
#   Delivers a recent devop reaction from devopsreactions.tumblr.com. Uses an API key but does not require full authentication. If you've requested 20 devops reactions then it goes back to the most recent one again.
#
# Commands:
#   fedbot devop me - get a devop reaction
#
# Author:
#   hollsk

module.exports = (robot) ->

  robot.brain.on 'loaded', =>
    robot.brain.data.devop_counter || = 0

  robot.respond /devop me/i, (msg) ->
    msg.http("http://api.tumblr.com/v2/blog/devopsreactions.tumblr.com/posts/?api_key=QnPKLySe5CRuDzp89qYw0XtXVboNo77fHTUituK3vZUKfCUQkY")
      .get() (err, res, body) ->
        result = JSON.parse(body)

        if result.response.posts <= 0
          msg.send "No reactions to display."
          return

        urls = [ ]

        for child in result.response.posts
          if child.title.length > 0 && child.body.length > 0

            bodySrcBits = child.body.split '"'

            for arrayPiece in bodySrcBits
              imageSrcIndex = arrayPiece.indexOf ".gif", 0
              if imageSrcIndex > 0
                urls.push({name: child.title, image: arrayPiece}) 

        if result.response.posts.length == robot.brain.data.devop_counter
          robot.brain.data.devop_counter = 0

        if urls[robot.brain.data.devop_counter].name.length > 0

          msg.send "#{urls[robot.brain.data.devop_counter].image}"
          msg.send " #{urls[robot.brain.data.devop_counter].name}"
          robot.brain.data.devop_counter += 1
          return

        msg.send urls[0].name
        robot.brain.data.devop_counter = 1
