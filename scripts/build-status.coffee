# Description:
#   Web-hook for notifying campfire of build status
#
# Author:
#   rowanmanning

module.exports = (robot) ->

  robot.router.post '/hook/build-status', (req, res) ->
    if req.body?.build
      build = req.body.build
      if build.status == 'error'
        if process.env.HUBOT_CAMPFIRE_ROOMS
          rooms = process.env.HUBOT_CAMPFIRE_ROOMS.split ','
        else
          rooms = [1]
        for room in rooms
          msg = """
            "#{build.committer}\" tried to kill me with bad code! I'm refusing to deploy.
            See #{build.short_commit_id} (#{build.build_url})
          """
          robot.messageRoom room, msg
    res.end ''
