# Description:
#   Your mum. And yours.
#
# Commands:
#   None
#

module.exports = (robot) ->

  starterJokes = [
    "your mum's so fat they put speed bumps at the buffet",
    "your mum's so fat that when she was diagnosed with a flesh-eating disease, the doctor gave her ten years to live",
    "your mum's so fat instead of an STD she gave me cholesterol",
    "your mum's so fat her blood types ragu",
    "http://www.youtube.com/watch?v=ImhN6-9KLTY",
    "your mum's so fat that when she talks to herself, it’s a long distance call",
    "your mum's so dumb she got tangled up with the cordless phone",
    "your mum's so ugly that the last time I saw something that looked like her, I pinned a tail on it.",
    "your mum's so ugly that that when she sits in the sand on the beach, cats try to bury her",
    "your mum's so ugly that she gives Freddy Kreuger nightmares",
    "your mum's so ugly that she threw a boomerang and it wouldn't even come back",
    "your mum's so stupid that she spent twenty minutes lookin' at an orange juice carton because it said 'concentrate'",
    "your mum's so stupid that she thought Tupac Shakur was a Jewish holiday",
    "your mum's so stupid that she got fired from the M&M factory for throwing away all the W's",
    "your mum's so stupid that she got hit by a parked car",
    "your mum's so stupid, she gave birth to you",
    "your mum's so stupid she bought tickets to Xbox Live",
  ]

  robot.hear /^your m[ou]m(m[ay])?(s|'s| is)?\b/i, (msg) ->
    if /stupid|dumb|fat|thick|ugly/i.test(msg.message.text)
      mumJokes = robot.brain.get("mumJokes") || starterJokes
      msg.send msg.random mumJokes
      if (msg.message.text not in mumJokes)
        mumJokes.push msg.message.text
        robot.brain.set "mumJokes", mumJokes
      console.log(mumJokes)