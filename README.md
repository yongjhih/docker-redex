[![Docker Pulls](https://img.shields.io/docker/pulls/yongjhih/redex.svg)](https://hub.docker.com/r/yongjhih/redex/)
[![Docker Stars](https://img.shields.io/docker/stars/yongjhih/redex.svg)](https://hub.docker.com/r/yongjhih/redex/)
[![Docker Size](https://img.shields.io/imagelayers/image-size/yongjhih/redex/latest.svg)](https://imagelayers.io/?images=yongjhih/redex:latest)
[![Docker Layers](https://img.shields.io/imagelayers/layers/yongjhih/redex/latest.svg)](https://imagelayers.io/?images=yongjhih/redex:latest)
[![Travis CI](https://img.shields.io/travis/yongjhih/docker-redex.svg)](https://travis-ci.org/yongjhih/docker-redex)

# docker images for redex

docker images for [redex](https://github.com/facebook/redex)

## Pre-requisites

To use this docker image, you will need a working docker
installation. See the instructions for
[Linux](http://docs.docker.com/linux/step_one/) or
[MacOSX](http://docs.docker.com/mac/step_one/) as appropriate.


## Usage

```sh
$ curl -L https://github.com/yongjhih/docker-redex/raw/master/redex > ~/bin/redex && chmod a+x ~/bin/redex
$ ~/bin/redex path/to/your.apk -o path/to/output.apk
```


## Build

This docker file will use current commit of redex.

```sh
$ docker build --rm -t yongjhih/redex:android android
$ ./redex path/to/your.apk -o path/to/output.apk
```
