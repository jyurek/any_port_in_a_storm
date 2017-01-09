# Any Port In A Storm

You need a port, any port. But not one in use, obviously. Run this, and it'll
tell you a port that's open for listening.

* `lsof` is distributed with Mac OS X.
* `ruby` is distributed with Mac OS X.
* `sed` is distributed with Mac OS X.

You shouldn't need to install anything special to use this.

## Usage

    $ ./any_port_in_a_storm
    25331
    $

That's all it does. You get a random not-already-in-use port between 1024 and
65535.
