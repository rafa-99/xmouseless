# xmouseless

This program is a replacement for the physical mouse in Linux.

Features:
- move the mouse with different speeds
- click and grab
- scroll
- execute shell commands


## Installation
```
make
sudo make install
```

If you are not using an Arch based distro you might have to install some headers, e.g. on
Debian based distros:
```
sudo apt-get install libx11-dev libxtst-dev
```

## Usage

When starting xmouseless, it grabs the keyboard and all defined bindings are
available. When pressing an exit key, the program exits.

The usage is quite intuitive and with some practice, you can move the pointer to
a specific location very fast. Basically, you move the pointer by pressing some
keys (the defaults are h, j, k and l for left, down, up and right)
and change the speed by pressing number keys from 1 through 3.
The keys u, i and o (by default) are used to simulate mouse clicks and grabbing.
With some other keys, you can scroll up, down, left and right and execute
previously defined shell commands.

You probably want to define a key binding to start xmouseless.


## Configuration

The configuration is done in config.def.h, which is a C header file,
but you don't need any programming knowledge to edit it.
After you edited the file, you have to run make again.
