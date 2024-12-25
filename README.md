# Odin GTK

Odin Bindings to GTK4 and associated libraries generated using [runic](https://github.com/Samudevv/runic)

| Library                                                          | Path                | License                                                                                    |
| ---------------------------------------------------------------- | ------------------- | ------------------------------------------------------------------------------------------ |
| [glib](https://gitlab.gnome.org/GNOME/glib)                      | `glib`              | [LGPL 2.1](https://gitlab.gnome.org/GNOME/glib/-/blob/main/LICENSES/LGPL-2.1-or-later.txt) |
| [gobject](https://gitlab.gnome.org/GNOME/glib)                   | `glib/gobject`      | [LGPL 2.1](https://gitlab.gnome.org/GNOME/glib/-/blob/main/LICENSES/LGPL-2.1-or-later.txt) |
| [gmodule](https://gitlab.gnome.org/GNOME/glib)                   | `glib/gmodule`      | [LGPL 2.1](https://gitlab.gnome.org/GNOME/glib/-/blob/main/LICENSES/LGPL-2.1-or-later.txt) |
| [gio](https://gitlab.gnome.org/GNOME/glib)                       | `glib/gio`          | [LGPL 2.1](https://gitlab.gnome.org/GNOME/glib/-/blob/main/LICENSES/LGPL-2.1-or-later.txt) |
| [girepository](https://gitlab.gnome.org/GNOME/glib)              | `glib/girepository` | [LGPL 2.1](https://gitlab.gnome.org/GNOME/glib/-/blob/main/LICENSES/LGPL-2.1-or-later.txt) |
| [gdk-pixbuf](https://gitlab.gnome.org/GNOME/gdk-pixbuf)          | `gdk-pixbuf`        | [LGPL 2.1](https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/blob/master/COPYING)                |
| [pango](https://gitlab.gnome.org/GNOME/pango.git)                | `pango`             | [LGPL 2](https://gitlab.gnome.org/GNOME/pango/-/blob/main/COPYING)                         |
| [pangocairo](https://gitlab.gnome.org/GNOME/pango.git)           | `pango/pangocairo`  | [LGPL 2](https://gitlab.gnome.org/GNOME/pango/-/blob/main/COPYING)                         |
| [cairo](https://gitlab.freedesktop.org/cairo/cairo.git)          | `cairo`             | [LGPL 2.1](https://gitlab.freedesktop.org/cairo/cairo/-/blob/master/COPYING-LGPL-2.1)      |
| [graphene](https://github.com/ebassi/graphene)                   | `graphene`          | [MIT](https://github.com/ebassi/graphene/blob/master/LICENSES/MIT.txt)                     |
| [gtk](https://gitlab.gnome.org/GNOME/gtk)                        | `gtk`               | [LGPL 2.1](https://gitlab.gnome.org/GNOME/gtk/-/blob/main/COPYING)                         |
| [gtk4-layer-shell](https://github.com/wmww/gtk4-layer-shell.git) | `gtk/layer-shell`   | [MIT](https://github.com/wmww/gtk4-layer-shell/blob/main/LICENSE)                          |

## Supported Platforms

| OS    | Arch          |
| ----- | ------------- |
| Linux | x86_64, arm64 |

Other UNIX-like systems might also work, but anything else but 64-Bit won't work, since there are specific workarounds used for 64-Bit.

## Usage

By default all the libraries will be linked dynamically. Installing the gtk package of your linux distribution should be fine. But before you can use these bindings you need to build a wrapper. The build dependencies are:

+ [just](https://just.systems)
+ meson
+ ninja
+ python
+ gcc

To install them on archlinux:
```
sudo pacman -S --needed --noconfirm base-devel just meson ninja python harfbuzz
```
on ubuntu:
```
sudo apt install -y build-essential just meson ninja-build python3
```
on alpine:
```
sudo apk add just meson samurai python3 build-base harfbuzz-dev
```

Then execute:

```
just setup && just wrapper
```

The gtk package on different linux distributions:

| Distribution | Package Name                              |
| ------------ | ----------------------------------------- |
| Arch Linux   | `gtk4`, `gtk4-layer-shell`                |
| Ubuntu       | `libgtk-4-dev`, `libgtk4-layer-shell-dev` |
| Alpine Linux | `gtk4.0-dev`, `gtk4-layer-shell-dev`      |
