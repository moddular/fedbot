# Description:
#   Do you even lift?

responses = [
  'http://i.imgur.com/GTigDjR.jpg'
  'http://i.imgur.com/IOOaoQi.jpg'
  'http://i.imgur.com/IYWzy0l.jpg'
  'http://i.imgur.com/J5OJ68m.jpg'
  'http://i.imgur.com/KrR9Zkl.jpg'
  'http://i.imgur.com/P3OWPAF.jpg'
  'http://i.imgur.com/qKalnHS.jpg'
  'http://i.imgur.com/rp0DHiX.jpg'
  'http://i.imgur.com/wK2HvVM.jpg'
]

module.exports = (robot) ->

  require('./helpers/listener').create(
    name: 'do-you-even-lift'
    pattern: /\byou even lift\b/i
    response: responses
    defaultProbability: 1
  )(robot)

  require('./helpers/http-image-list')(
    robot,
    '/do-you-even-lift',
    'Do You Even Lift?',
    'A list of all the "Do You Even Lift?" images:',
    responses
  )
