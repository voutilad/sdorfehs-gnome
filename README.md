# sdorfehs-gnome

I recently started playing with [sdorfehs](https://github.com/jcs/sdorfehs) on my OpenBSD system and figured that I'd like to try standardizing on it across workstations. This means running it on my Linux of choice: _whatever the latest Ubuntu is because laptop support tends to be pretty ok._

![Oh nice, screen dimming!](/screenshot.png?raw=true "screen dimming via GNOME")

In short, this is a modified fork of [i3-gnome](https://github.com/i3-gnome/i3-gnome), primarily just `sed -i s/i3/sdorfehs/g *`. As I use it I hope to tweak it as needed, but since [i3-gnome](https://github.com/i3-gnome/i3-gnome) already "just works" with i3 this fork is pretty complete already.

> Heads up: This was all put together on an old, EOL'd Ubuntu 18.10 system I just booted for the first time in months, but I'd imagine should work on 18.04 or 19.04...or technically any modern distro using GNOME.

## Requirements
* [sdorfehs](https://github.com/jcs/sdorfehs) -- a fork of [ratpoison](https://www.nongnu.org/ratpoison/)
* GNOME (3.32.x)
* GDM (optional, but useful)
* [GNOME Flashback](https://wiki.gnome.org/Projects/GnomeFlashback) -- the magic glue between your sdorfehs session and the GNOME stuff

## Installation from Scratch
Assuming you've got a build environment installed, just follow along:

1. Get, build, and install [sdorfehs](https://github.com/jcs/sdorfehs) (you may need to install some deps)
2. Install GNOME Flashback using your Linux distro's package manager.
3. Create or modify `~/.config/sdorfehs/config` and add the line: `exec gnome-flashback`
4. Install `sdorfehs-gnome`: simply run `$ sudo make install`
5. Log out of your current GNOME session.
6. Log back in, but select the now available SDORFEHS + GNOME session.

At this point you should be able to use your brightness keys as they work under GNOME as well as have the same look/feel when launching apps like `gnome-terminal`, including whatever tweaks you may have done for HiDPI displays. A 3-finger-salute (`ctrl+alt+backspace`) should pop a GNOME session dialog now as well.

## What about OpenBSD?
I honestly don't run GNOME on OpenBSD, so I intend to only use this on any of my Linux-based devices where applicable. I'm lazy in the sense that I don't want to wrestle all the nasty settings to get things like backlight keys and dimming and stuff to work on those systems and since they tend to install GNOME out of the box, it's easy to get GNOME set up first and then switch over to alternatives wm's.

---
This project is under the same license (MIT) as the original project. The original copyright is below.

Original Author/Copyright for i3-gnome: 
MIT - © 2014-2017 [Lorenzo Villani](https://github.com/lvillani). 2017 i3-gnome team.
