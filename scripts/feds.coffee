# Description:
#   FED based shit
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
		"http://i.imgur.com/5Y3vocd.png"
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
		"Cold, headache, low blood sugar. Not on top form."
	]

	smellMyCheese = "http://kil.gr/sandbox/secret/fedbot/perrycheese.gif"

	robot.respond /jude me/i, (msg) ->
		msg.send msg.random judeImages

	robot.hear /what would jude say|wwjs/i, (msg) ->
		msg.send msg.random judeQuotes

	robot.hear /cheese/i, (msg) ->
		msg.send smellMyCheese

	robot.hear /judehoff/i, (msg) ->
		msg.send judeImages[5]

	robot.hear /our glorious leader/i, (msg) ->
		msg.send judeImages[7]
