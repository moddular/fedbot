'use strict';

module.exports = initRoute;

function initRoute (app, robot) {
	app.get('/help', function (request, response) {
		response.render('help', {
			commands: robot.helpCommands()
		});
	});
}
