
FEDbot
======

The Nature FEDs campfire friend.

![FEDbot](https://raw.github.com/thefeds/fedbot/master/public/fedbot.png)


Setup
-----

Install Node.js and clone this repo somewhere. Run `make` to install dependencies and lint the code:

```sh
make
```

You can optionally install/run [Redis](http://redis.io/) (`brew install redis` is the easiest way on a Mac) in order to retain state between restarts.


Running Locally
---------------

To run FEDbot locally:

```sh
make start
```

This will let you chat to FEDbot by yourself on the command line. You can also view FEDbot's web interface at [http://localhost:6542/](http://localhost:6542/)


Scripting
---------

If you want to write new scripts, read the [Hubot documentation](https://github.com/github/hubot/blob/master/docs/scripting.md#readme). We write scripts in JavaScript because CoffeeScript is a bit gross.


Testing
-------

You need to lint your code before committing, or the build will fail the hell out of you.

```
make ci
```
