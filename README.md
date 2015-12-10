
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

Note that due to a bug in linuxbrew permissions are wrongly set (see [Homebrew/linuxbrew#612](https://github.com/Homebrew/linuxbrew/issues/612)). Currently, this image uses a fork that has this bug fixed. As soon as this bug is squashed, we will change to linuxbrew proper.

Note that `alpine` uses the [musl libc](http://www.musl-libc.org/), so the resulting binary
will probably nto work on your local computer (unless you have musl libc installed). But
you can use a proper environment (dockerized as well):

    $ docker run -i --rm -v $(pwd)/hello:/cellar alpine /cellar/hello/2.10/bin/hello

