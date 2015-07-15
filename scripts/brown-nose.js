// Description:
//   The brown nose award
//
// Commands:
//   hubot brown nose - Get a brown nose award

'use strict';

module.exports = robotHear(/\bbrown[ -]?nos(e|er|ing)\b/i, [
	'http://i.imgur.com/FwAW71D.jpg',
	'http://i1112.photobucket.com/albums/k497/animalsbeingdicks/abd-6-30-2014.gif'
]);
