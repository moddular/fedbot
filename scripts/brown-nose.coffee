# Description:
#   The brown nose award

module.exports = require('./helpers/listener').create
  name: 'brown-nose'
  pattern: /brown[\s\-]?nos(e|er|ing)/i
  response: [
    'http://i.imgur.com/FwAW71D.jpg'
    'http://i1112.photobucket.com/albums/k497/animalsbeingdicks/abd-6-30-2014.gif'
  ]
  defaultProbability: 1
