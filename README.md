
FEDbot
======

The Nature FEDs campfire friend.


Running Locally
---------------

Install Node.js and clone this repo somewhere. Install the dependencies with:

```sh
$ npm install
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
