[![Docker Pulls](https://img.shields.io/docker/pulls/yongjhih/redex.svg)](https://hub.docker.com/r/yongjhih/redex/)
[![Docker Stars](https://img.shields.io/docker/stars/yongjhih/redex.svg)](https://hub.docker.com/r/yongjhih/redex/)
[![Docker Size](https://img.shields.io/imagelayers/image-size/yongjhih/redex/latest.svg)](https://imagelayers.io/?images=yongjhih/redex:latest)
[![Docker Layers](https://img.shields.io/imagelayers/layers/yongjhih/redex/latest.svg)](https://imagelayers.io/?images=yongjhih/redex:latest)

ReDex: An Android Bytecode Optimizer
------------------------------------

ReDex is an Android bytecode (dex) optimizer originally developed at
Facebook. It provides a framework for reading, writing, and analyzing .dex
files, and a set of optimization passes that use this framework to improve the
bytecode.  An APK optimized by ReDex should be smaller and faster than its
source.

# Quick Start Guide

### Docker

```sh
$ curl -L https://github.com/yongjhih/docker-redex/raw/master/docker-redex > ~/bin/redex && chmod a+x ~/bin/redex

$ ~/bin/redex path/to/your.apk -o path/to/output.apk
```

# More Information

The blog [Optimizing Android bytecode with ReDex](https://code.facebook.com/posts/1480969635539475/optimizing-android-bytecode-with-redex) provides an overview of the Redex project.

# License

ReDex is BSD-licensed.  We also provide an additional patent grant.
