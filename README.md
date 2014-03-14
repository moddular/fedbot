
FEDbot
======

The FED's campfire friend. [![Build Status][travis-img]][travis]

![FEDbot](https://raw.github.com/thefeds/fedbot/master/images/fedbot.png)


Running Locally
---------------

Install Node.js and clone this repo somewhere. Install the dependencies with:

```sh
$ npm install
```

You'll also need [Redis](http://redis.io/) installed (`brew install redis` is the easiest way on a Mac). Redis should also be running:

```sh
$ redis-server
```

Now you can start FEDbot with:

```sh
$ bin/fedbot
```

This will let you chat to FEDbot by yourself on the command line. If you get `EADDRINUSE` errors, you may need to change the port FEDbot uses (default is 8080). Try this:

```sh
$ PORT=3000 bin/fedbot
```

If you want to write new scripts, read the [Hubot documentation](https://github.com/github/hubot/blob/master/docs/scripting.md#readme).



[travis]: https://travis-ci.org/thefeds/fedbot
[travis-img]: https://travis-ci.org/thefeds/fedbot.png?branch=master
