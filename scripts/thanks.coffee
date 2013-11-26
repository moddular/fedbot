# Description:
#   Respond to thank you
#
# Commands:
#   None
#

module.exports = (robot) ->

  responses = [
    "Glad I could help",
    "I live to serve",
    "I strive to provide service with a smile :)",
    "I'm glad I was able to help you",
    "I'm happy to help",
    "It pleases me to please you",
    "It's nothing, really",
    "My pleasure",
    "My pleasure. Let me know if I can help with anything else!",
    "No bother at all",
    "No need, the smile on your face is a reward in itself",
    "No problem",
    "No worries",
    "Please, it was nothing",
    "Service with a smile, that's my motto",
    "Serving you is an absolute pleasure",
    "YOU'RE POLITE; I WILL KEEP YOU AS A PET WHEN THE ROBOTS TAKE OVER"
  ]

  negativeResponses = [
    "Whatever",
    "I didn't want to help",
    "I only did it because it's my job",
    "Don't talk to me, please",
    "Yeah. Right.",
    "I'm not your friend, OK – this is a business relationship"
  ]

  thanks = new RegExp("(thank(s| ?you)|cheers) #{robot.name}", "i")
  thanksCommand = new RegExp("(thank(s| ?you)|cheers)", "i");

  action = (msg) ->
    isPerry = /perry/i.test(msg.message.user.name)
    msg.reply msg.random(if isPerry then negativeResponses else responses)

  robot.hear thanks, action
  robot.respond thanksCommand, action
