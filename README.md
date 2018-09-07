# Gtk3

## What is this?

I'm pretty sure this is an example of the pkg-config functionality in Swift being completely broken. If you know how to get this working, please tell me! This is the swift part, the C half is [here](https://github.com/TaborKelly/CGtk3).

The code is taken pretty much verbatim the [official documentation](https://github.com/apple/swift-package-manager/blob/master/Documentation/PackageDescriptionV3.md#pkgconfig) but it still doesn't work?

## (not) building

All notes were take in macOS 10.13.6 with Apple Swift version 4.1.2 (swiftlang-902.0.54 clang-902.0.39.2).

### Install gtk3 from Homebrew

```sh
$ brew install gtk+3
```
### Make sure that pkg-config knows about gtk3

```sh
$ pkg-config gtk+-3.0 --cflags
-D_REENTRANT -I/usr/local/Cellar/gtk+3/3.22.30/include/gtk-3.0 -I/usr/local/Cellar/glib/2.58.0/include/gio-unix-2.0/ -I/usr/local/Cellar/cairo/1.14.12/include/cairo -I/usr/local/Cellar/libepoxy/1.5.2/include -I/usr/local/Cellar/pango/1.42.4/include/pango-1.0 -I/usr/local/Cellar/harfbuzz/1.8.8/include/harfbuzz -I/usr/local/Cellar/graphite2/1.3.12/include -I/usr/local/Cellar/pango/1.42.4/include/pango-1.0 -I/usr/local/Cellar/fribidi/1.0.5/include/fribidi -I/usr/local/Cellar/atk/2.28.1_2/include/atk-1.0 -I/usr/local/Cellar/cairo/1.14.12/include/cairo -I/usr/local/Cellar/pixman/0.34.0_1/include/pixman-1 -I/usr/local/Cellar/fontconfig/2.13.1/include -I/usr/local/opt/freetype/include/freetype2 -I/usr/local/Cellar/libpng/1.6.35/include/libpng16 -I/usr/local/Cellar/gdk-pixbuf/2.36.12/include/gdk-pixbuf-2.0 -I/usr/local/Cellar/libpng/1.6.35/include/libpng16 -I/usr/local/Cellar/glib/2.58.0/include/glib-2.0 -I/usr/local/Cellar/glib/2.58.0/lib/glib-2.0/include -I/usr/local/opt/gettext/include -I/usr/local/Cellar/pcre/8.42/include
```

### clone this repo and try to build it

```sh
# clone omitted for clarity
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
