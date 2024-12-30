# Odin GTK

Odin Bindings to GTK4, libadwaita and associated libraries generated using [runic](https://github.com/Samudevv/runic)

**DANGER: Some functions with variadic arguments crash! If you want to use such a function make sure that it works**

| Library                                                      | Path                | License                                                                                    |
| ------------------------------------------------------------ | ------------------- | ------------------------------------------------------------------------------------------ |
| [glib](https://gitlab.gnome.org/GNOME/glib)                  | `glib`              | [LGPL 2.1](https://gitlab.gnome.org/GNOME/glib/-/blob/main/LICENSES/LGPL-2.1-or-later.txt) |
| [gobject](https://gitlab.gnome.org/GNOME/glib)               | `glib/gobject`      | [LGPL 2.1](https://gitlab.gnome.org/GNOME/glib/-/blob/main/LICENSES/LGPL-2.1-or-later.txt) |
| [gmodule](https://gitlab.gnome.org/GNOME/glib)               | `glib/gmodule`      | [LGPL 2.1](https://gitlab.gnome.org/GNOME/glib/-/blob/main/LICENSES/LGPL-2.1-or-later.txt) |
| [gio](https://gitlab.gnome.org/GNOME/glib)                   | `glib/gio`          | [LGPL 2.1](https://gitlab.gnome.org/GNOME/glib/-/blob/main/LICENSES/LGPL-2.1-or-later.txt) |
| [girepository](https://gitlab.gnome.org/GNOME/glib)          | `glib/girepository` | [LGPL 2.1](https://gitlab.gnome.org/GNOME/glib/-/blob/main/LICENSES/LGPL-2.1-or-later.txt) |
| [gdk-pixbuf](https://gitlab.gnome.org/GNOME/gdk-pixbuf)      | `gdk-pixbuf`        | [LGPL 2.1](https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/blob/master/COPYING)                |
| [pango](https://gitlab.gnome.org/GNOME/pango.git)            | `pango`             | [LGPL 2](https://gitlab.gnome.org/GNOME/pango/-/blob/main/COPYING)                         |
| [pangocairo](https://gitlab.gnome.org/GNOME/pango.git)       | `pango/pangocairo`  | [LGPL 2](https://gitlab.gnome.org/GNOME/pango/-/blob/main/COPYING)                         |
| [cairo](https://gitlab.freedesktop.org/cairo/cairo.git)      | `cairo`             | [LGPL 2.1](https://gitlab.freedesktop.org/cairo/cairo/-/blob/master/COPYING-LGPL-2.1)      |
| [graphene](https://github.com/ebassi/graphene)               | `graphene`          | [MIT](https://github.com/ebassi/graphene/blob/master/LICENSES/MIT.txt)                     |
| [gtk](https://gitlab.gnome.org/GNOME/gtk)                    | `gtk`               | [LGPL 2.1](https://gitlab.gnome.org/GNOME/gtk/-/blob/main/COPYING)                         |
| [gtk4-layer-shell](https://github.com/wmww/gtk4-layer-shell) | `gtk/layer-shell`   | [MIT](https://github.com/wmww/gtk4-layer-shell/blob/main/LICENSE)                          |
| [libadwaita](https://gitlab.gnome.org/GNOME/libadwaita)      | `adwaita`           | [LGPL 2.1](https://gitlab.gnome.org/GNOME/libadwaita/-/blob/main/COPYING)                  |

## Supported Platforms

| OS    | Arch          |
| ----- | ------------- |
| Linux | x86_64, arm64 |

You could get other UNIX-like systems to work if you put in some effort, but anything else but 64-Bit won't work, since there are specific workarounds used for 64-Bit.

## Usage

The gtk package on different linux distributions:

| Distribution | Package Name                              |
| ------------ | ----------------------------------------- |
| Arch Linux   | `gtk4`, `gtk4-layer-shell`                |
| Ubuntu       | `libgtk-4-dev`, `libgtk4-layer-shell-dev` |
| Alpine Linux | `gtk4.0-dev`, `gtk4-layer-shell-dev`      |

The libadwaita package on different linux distributions:

| Distribution | Package Name       |
| ------------ | ------------------ |
| Arch Linux   | `libadwaita`       |
| Ubuntu       | `libadwaita-1-dev` |
| Alpine Linux | `libadwaita-dev`   |

By default all the libraries will be linked dynamically. Installing the gtk package of your linux distribution should be fine. **Library files for some wrappers are provided, therefore the package can be used as is and does not need any further effort to work on the supported platforms**. But in case you want to rebuild them you need to follow these instructions:

The build dependencies are:

- [just](https://just.systems)
- meson
- ninja
- python
- gcc
- harfbuzz
- vulkan-headers

To install them on archlinux:

```
sudo pacman -S --needed base-devel just meson ninja python harfbuzz vulkan-headers
```

on ubuntu:

```
sudo apt install -y build-essential just meson ninja-build python3 libharfbuzz-dev libvulkan-dev
```

on alpine:

```
sudo apk add just meson samurai python3 build-base harfbuzz-dev vulkan-headers
```

First make sure that the submodules are checked out, if they aren't you can do it like this:

```
git submodule init
git submodule update
```

Then execute:

```
just setup && just wrapper
```
