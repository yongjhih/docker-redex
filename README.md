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

```sh
$ curl -L https://github.com/yongjhih/docker-redex/raw/master/docker-redex > ~/bin/redex && chmod a+x ~/bin/redex

$ ~/bin/redex path/to/your.apk -o path/to/output.apk
```

# FAQ

## My app fails to install with `Failure [INSTALL_PARSE_FAILED_NO_CERTIFICATES]`

After you run redex, you'll need to re-sign your app.  You can re-sign manually
using these instructions:
http://developer.android.com/tools/publishing/app-signing.html#signing-manually.

You can also tell redex to sign for you.  If you want to sign with the debug
key, you can simply do:

```
redex --sign [ ... arguments ...]
```

If you want to sign with your release key, you'll need to provide the
appropriate args:

```
--sign Sign the apk after optimizing it
-s [KEYSTORE], --keystore [KEYSTORE]
-a [KEYALIAS], --keyalias [KEYALIAS]
-p [KEYPASS], --keypass [KEYPASS]
```

## How does this compare to ProGuard?

ReDex is conceptually similar to ProGuard, in that both optimize bytecode.
ReDex, however, optimizes .dex bytecode, while ProGuard optimizes .class
bytecode before it is lowered to .dex.  Operating on .dex is sometimes an
advantage: you can consider the number of virtual registers used by a method
that is an inlining candidate, and you can control the layout of classes within
a dex file.  But ProGuard has many capabilities that ReDex does not (for
example, ReDex will not remove unused method parameters, which ProGuard does).

In our opinion, comparing ReDex and ProGuard is a bit apples-and-oranges, since
we have focused on optimizations that add value on top of ProGuard.  We use both
tools to optimize the Facebook app.  Our reported performance and size
improvements (about 25% on both dex size and cold start time) are based on using
ReDex on an app already optimized with ProGuard.  We have no plans to measure
performance without ProGuard.

## How about DexGuard?

DexGuard operates on dex, but we haven't evaluated it at all since it's closed
source.  We don't use it at Facebook and we have no plans to start.

# More Information

The blog [Optimizing Android bytecode with ReDex](https://code.facebook.com/posts/1480969635539475/optimizing-android-bytecode-with-redex) provides an overview of the Redex project.

# License

ReDex is BSD-licensed.  We also provide an additional patent grant.
