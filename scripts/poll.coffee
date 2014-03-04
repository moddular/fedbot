# Description:
#   Run polls with Hubot
#
# Commands:
#   hubot poll me <answers> - Generate a poll with comma-separated answers
#   hubot vote <answer> - Vote for an answer
#   hubot poll results - Get results for the current/last poll
#   hubot poll end - End the current poll
#
# Author:
#   rowanmanning

module.exports = (robot) ->

  getCurrentPoll = ->
    robot.brain.get('currentPoll') || null

  setCurrentPoll = (poll) ->
    robot.brain.set 'currentPoll', poll

  endCurrentPoll = (poll) ->
    robot.brain.set 'lastPoll', getCurrentPoll()
    setCurrentPoll null

  formatAnswer = (answer) ->
    answer.trim().toLowerCase()
  
  formatAnswers = (str) ->
    str.split(',').map(formatAnswer)

  getVoteCounts = (poll) ->
    voteCounts = {}
    for answer in poll.answers
      voteCounts[answer] = 0

    for user, vote of poll.votes
      if poll.rigged
        key = poll.answers[0]
      else
        key = vote
      voteCounts[key] += 1
    voteCounts

  getVoteCountsArray = (poll) ->
    voteCounts = getVoteCounts poll
    voteCountsArray = []
    for answer, count of voteCounts
      voteCountsArray.push {answer, count}
    voteCountsArray.sort (a, b) -> b.count - a.count

  getLastPoll = ->
    robot.brain.get('lastPoll') || null

  getResultsMessage = (poll) ->
    if poll
      resultsTable = ("#{answer.answer}: #{answer.count} votes" for answer in getVoteCountsArray(poll)).join('\n');
      'The results for the poll:\n' + resultsTable
    else
      'No results are available.'

  robot.respond /((?:please )?)poll me (.+)/i, (msg) ->
    if getCurrentPoll()
      msg.reply 'There is already a poll running. You must end the current poll before starting a new one.'
    else
      newPoll =
        answers: formatAnswers(msg.match[2]),
        rigged: msg.match[1],
        votes: {}
      robot.brain.set 'currentPoll', newPoll
      msg.reply 'Poll created! (' + newPoll.answers.join(', ') + ')'

  robot.respond /vote (.+)/i, (msg) ->
    currentPoll = getCurrentPoll()
    answer = formatAnswer msg.match[1]
    if currentPoll
      if answer in currentPoll.answers
        currentPoll.votes[msg.message.user.id] = answer
        msg.reply 'Your vote (' + answer + ') has been registered.'
      else
        msg.reply 'That\'s not a valid answer, please pick from: ' + currentPoll.answers.join(', ') + '.'
    else
      msg.reply 'There is no poll running.'

  robot.respond /is this poll rigged/i, (msg) ->
    currentPoll = getCurrentPoll()
    if currentPoll
      if currentPoll.rigged
        msg.reply 'There can only be one winner (' + currentPoll.answers[0] + ')'
      else
        msg.reply 'I\'m shocked and appalled at your accusation'
    else
      msg.reply 'There is no poll running.'

  robot.respond /poll results/i, (msg) ->
    currentPoll = getCurrentPoll()
    if currentPoll
      msg.send getResultsMessage(currentPoll)
    else
      msg.send getResultsMessage(getLastPoll())

  robot.respond /poll end/i, (msg) ->
    if getCurrentPoll()
      endCurrentPoll()
      msg.send 'The poll has now ended!\n' + getResultsMessage(getLastPoll())
    else
      msg.reply 'There is no poll running.'
