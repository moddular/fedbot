# Description:
#   Where are Glynn's trousers?

module.exports = require('./helpers/listener').create
  name: 'trousers'
  pattern: /\b(trousers|pants)\b/i
  response: 'Where is your trousers, Glynn?'
  defaultProbability: 10
