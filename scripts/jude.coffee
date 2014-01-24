# Description:
#   Jude based shit
#
# Commands:
#   hubot jude me - random jude image
#   what would jude say - random jude quote
#

module.exports = (robot) ->

	judeImages = [
		"http://www.gyford.com/images/jude.jpg",
		"http://kil.gr/sandbox/secret/fedbot/RVPjude.jpg",
		"http://kil.gr/sandbox/secret/fedbot/jude.jpg",
		"http://kil.gr/sandbox/secret/fedbot/judepad.jpg",
		"http://kil.gr/sandbox/secret/fedbot/tourist.jpg",
		"http://i.imgur.com/Tfq7Bi7.gif",
		"http://kil.gr/sandbox/secret/fedbot/sexybeast.jpg",
		"http://kil.gr/sandbox/secret/fedbot/kim-jong-jude.jpg",
		"http://kil.gr/sandbox/secret/fedbot/hey-jude.jpg",
		"http://i.imgur.com/5Y3vocd.png",
		"http://i.imgur.com/ED67k6V.jpg",
		"http://i.imgur.com/zEEPSwd.jpg"
	]

	judeQuotes = [
		"Have I told you about my 'low hanging fruit'?",
		"Double Jack and diet please",
		"MNGH!!!",
		"Not in this morning. ill",
		"Up all night, blood sugar yo-yoing",
		"very low blood sugar (less than 3). Not functioning very well",
		"Low blood sugar, yadda yadda",
		"Everybody dies",
		"You go to the pub. I'll catch you up",
		"Can't make it. Shin splints",
		"Stay away from me when I'm in, I'm a sweaty mischief",
		"I am providing absolutely no value whatsoever atm. Packing up, going home.",
		"Cold, headache, low blood sugar. Not on top form.",
		"That is not the Legacy architecture. It's *a* legacy architecture.",
		"Understanding regular expressions aids you greatly as a developer.",
		"I've found it INSANELY wonderful, and I'm completely in love with it ... Actually ... it's less that I'm in love with *it*, and more that I'm in love with *your use of it*.",
		"Uranus is larger than Venus. I've seen it through the naked eye.",
		"What a wonderful week. I am most impressed by the great things that so many of you did. (I'm not high, this comes from the heart of my bottom).",
		"For future reference - please only ever use lowercase for branch names.",
		"My hands hurt, my trochanteric bursitis hurts, I've borked my knee - which hurts, my neuropathy hurts, my shin splints hurt, my feet hurt, I've sprained my index finger (that hurts), I'm too warm, I have a cold, I can't concentrate, and I only had 3 hours sleep last night.",
		"Not my fault!",
		"New rule: NO ONE IS ALLOWED TO TAKE ELECTRONIC DEVICES TO PUBS.",
		"I [...] propose Friday 13th... because nothing could possibly go wrong on that date. Count me in.",
		"I have an MRI at the NHNN, where they're going to INJECT me with a POISON.",
		"THIS ISN'T THE FUTURE I WAS PROMISED. WHERE ARE THE HOVER CARS AND THE ROBOT SERVANTS?",
		"... no bad thing, because OOCSS is awesome.",
		"OOCSS means you'll never have to.",
		"I want someone who either has experience using OOCSS, or will be open-minded enough to fall in love",
		"Jesus. I am sweating like a paedo at band camp.",
		"Don't touch anything within 3 metres of my desk (including Nick)"
	]

	robot.respond /jude me/i, (msg) ->
		msg.send msg.random judeImages

	robot.hear /what would jude say|wwjs/i, (msg) ->
		msg.send msg.random judeQuotes

	robot.hear /judehoff/i, (msg) ->
		msg.send judeImages[5]

	robot.hear /our glorious leader/i, (msg) ->
		msg.send judeImages[7]

	robot.hear /\bdevil(ish|ishly|\b)/i, (msg) ->
		msg.send "http://i.imgur.com/zEEPSwd.jpg"
