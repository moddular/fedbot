'use strict';

var consolidate = require('consolidate');
var eachModule = require('each-module');

module.exports = router;

function router (robot) {
	var app = robot.router;

	// Set some default view data
	app.locals.robotName = robot.name;
	app.locals.year = (new Date()).getFullYear();

	// View configuration
	app.engine('dust', consolidate.dust);
	app.set('view engine', 'dust');
	app.set('views', __dirname + '/../views');

	// Load routes
	eachModule(__dirname + '/../routes', function (name, initRoute) {
		initRoute(app, robot);
	});

}
