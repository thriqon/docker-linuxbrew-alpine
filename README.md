
Linuxbrew Alpine
================

Utility image to compile simple packages with `linuxbrew`.

Download
--------

    $ docker pull thriqon/linuxbrew-alpine

Usage
-----

for example, to install `hello`:

    $ mkdir hello
    $ docker run -i --rm -v $(pwd)/hello:/root/brew/Cellar/ thriqon/linuxbrew-alpine install hello

For a yet unknown reason (working on it), binaries created using this image have the wrong permissions set.
Unfortunately, we can't simply `chmod` the binary, since it's owned by `root`, but this works:

    $ sudo chmod a+x hello/hello/2.10/bin/hello

Note that `alpine` uses the [musl libc](http://www.musl-libc.org/), so the resulting binary
will probably nto work on your local computer (unless you have musl libc installed). But
you can use a proper environment (dockerized as well):

    $ docker run -i --rm -v $(pwd)/hello:/cellar alpine /cellar/hello/2.10/bin/hello

