# Gtk3

## What is this?

I'm pretty sure this is an example of the pkgConfig functionality in Swift being completely broken. If you know how to get this working, please tell me! This is the swift part, the C half is [here](https://github.com/TaborKelly/CGtk3).

The code is taken pretty much verbatim the [official documentation](https://github.com/apple/swift-package-manager/blob/master/Documentation/PackageDescriptionV3.md#pkgconfig) but it still doesn't work?

## (not) building

In OS X:

```sh
$ brew install gtk+3
...
$ swift build
Fetching git@github.com:TaborKelly/CGtk3.git
Cloning git@github.com:TaborKelly/CGtk3.git
Resolving git@github.com:TaborKelly/CGtk3.git at 0.1.0
Compile Swift Module 'Gtk3' (1 sources)
<module-includes>:1:9: note: in file included from <module-includes>:1:
#import "shim.h"
        ^
/Users/tabor.kelly/work/Gtk3/.build/checkouts/CGtk3.git-1657053074184707870/shim.h:4:10: error: 'gtk/gtk.h' file not found
#include <gtk/gtk.h>
         ^
/Users/tabor.kelly/work/Gtk3/Sources/main.swift:3:8: error: could not build Objective-C module 'CGtk3'
import CGtk3
       ^
error: terminated(1): /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-build-tool -f /Users/tabor.kelly/work/Gtk3/.build/debug.yaml main output:
```
