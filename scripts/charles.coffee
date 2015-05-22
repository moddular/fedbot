# Description:
#   Who's Charles?

module.exports = require('./helpers/listener').create
  name: 'charles'
  pattern: /\bcharles\b/i
  response: [
    'Who\'s Charles?'
    'Who the hell is Charles?'
    'Who is Charles?'
    'But who *is* Charles?'
    'Remind me who Charles is, again'
    'I\'m not sure who Charles is'
    'Yes, but does anybody know who Charles is?'
  ]
  defaultProbability: 20
