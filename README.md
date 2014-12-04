
FEDbot
======

The FED's campfire friend.  
[![Codeship Status](https://www.codeship.io/projects/9515a080-8da7-0131-ce77-322a2a3ca3d5/status?branch=master)](https://www.codeship.io/projects/16055)

![FEDbot](https://raw.github.com/thefeds/fedbot/master/public/fedbot.png)


Setup
-----

Install Node.js and clone this repo somewhere. Install the dependencies with:

```sh
npm install
```

You can optionally install/run [Redis](http://redis.io/) (`brew install redis` is the easiest way on a Mac) in order to retain state between restarts.


Running In Your Own Campfire
----------------------------

To run FEDbot in your own Campfire, [set up a free account](https://signup.37signals.com/campfire/free) and install [Foreman](http://ddollar.github.io/foreman/). Run the following to copy the sample environment file:

```sh
cp .env.sample .env
```

Now fill out your `.env` file based on [this guide](https://github.com/github/hubot/blob/master/docs/adapters/campfire.md#configuring).

Lastly, to start FEDbot and bring him into your Campfire room, run the following:

```sh
foreman start
```

Now you can chat to FEDbot in Campfire.


Running Locally
---------------

To run FEDbot locally:

```sh
bin/fedbot
```

This will let you chat to FEDbot by yourself on the command line. If you get `EADDRINUSE` errors, you may need to change the port FEDbot uses (default is 8080). Try this:

```sh
PORT=3000 bin/fedbot
```


Scripting
---------

If you want to write new scripts, read the [Hubot documentation](https://github.com/github/hubot/blob/master/docs/scripting.md#readme).



[travis]: https://travis-ci.org/thefeds/fedbot
[travis-img]: https://travis-ci.org/thefeds/fedbot.png?branch=master
