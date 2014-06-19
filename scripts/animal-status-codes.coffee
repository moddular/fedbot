  # Description:
#   Animal status codes
#
# Commands:
#   None

module.exports = (robot) ->
	robot.hear /\b200\b/i, (msg) ->
		msg.send 'https://farm8.staticflickr.com/7153/6512628175_6a4e8ab6ba_b.jpg'

	robot.hear /\b202\b/i, (msg) ->
		msg.send 'https://farm8.staticflickr.com/7167/6540479079_16e97a624a_b.jpg'

	robot.hear /\b401\b/i, (msg) ->
		msg.send 'https://farm8.staticflickr.com/7148/6508023065_8dae48a30b_b.jpg'

	robot.hear /\b403\b/i, (msg) ->
		msg.send 'https://farm8.staticflickr.com/7173/6508023617_f3ffc34e17_b.jpg'

	robot.hear /\b404\b/i, (msg) ->
		msg.send 'https://farm8.staticflickr.com/7172/6508022985_b22200ced0_b.jpg'

	robot.hear /\b418\b/i, (msg) ->
		msg.send 'https://farm8.staticflickr.com/7006/6508102407_a4de65687b_b.jpg'

	robot.hear /\b500\b/i, (msg) ->
		msg.send 'https://farm8.staticflickr.com/7001/6509400855_aaaf915871_b.jpg'

	robot.hear /\b502\b/i, (msg) ->
		msg.send 'https://farm8.staticflickr.com/7158/6508023429_735b433a36_b.jpg'
	
	robot.hear /\b503\b/i, (msg) ->
		msg.send 'https://farm8.staticflickr.com/7157/6540643319_7945715c3a_b.jpg'
