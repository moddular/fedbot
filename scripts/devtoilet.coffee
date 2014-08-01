# Description:
#   Web-hook for announcing things
#
# Author:
#   rowanmanning

module.exports = (robot) ->

  robot.router.get '/devtoilet', (req, res) ->
    res.setHeader 'content-type', 'text/html'
    res.end '''
      <form action="/devtoilet" method="post">

          <p>Report an issue with devtoilet:</p>

          <label for="trap">Trap:</label><br/>
          <select name="trap" id="trap">
              <option value="">Select a trap</option>
              <option value="1">Trap 1</option>
              <option value="2">Trap 2</option>
              <option value="3">Trap 3</option>
              <option value="4">Trap 4</option>
          </select><br/><br/>

          <label for="reason">Reason:</label><br/>
          <textarea name="reason" id="reason"></textarea><br/><br/>

          <label for="brown">Code Brown:</label>
          <input type="checkbox" name="brown" id="brown"/><br/><br/>

          <input type="submit" value="Report"/>

      </form>
    '''

  robot.router.post '/devtoilet', (req, res) ->
    q = req.body
    if q.trap && q.reason
      if process.env.HUBOT_CAMPFIRE_ROOMS
        rooms = process.env.HUBOT_CAMPFIRE_ROOMS.split ','
      else
        rooms = [1]
      head = if q.brown then 'CODE BROWN WARNING' else 'DEVTOILET WARNING'
      msg = "#{head} (TRAP #{q.trap}):\n#{q.reason}"
      for room in rooms
        robot.messageRoom room, msg
      res.end '<p>Success: the FEDs will be notified</p>'
    else
      res.end '<p>Error: trap and reason are required fields</p>'
