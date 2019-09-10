# sdorfehs-gnome

Basic config files for easily "installing" [sdorfehs](https://github.com/jcs/sdorfehs) into your GNOME Desktop environment.

![Oh nice, screen dimming!](/screenshot.png?raw=true "screen dimming via GNOME")

This is a modified fork of [i3-gnome](https://github.com/i3-gnome/i3-gnome). Basically just a complete `s/i3/sdorfehs/g`.

## Requirements
* sdorfehs
* GNOME (3.32.x)
* GDM (optional, but useful)
* [GNOME Flashback](https://github.com/i3-gnome/i3-gnome/wiki/Tips-&-Tricks#gnome-flashback) (allows using your GNOME settings and integrates all those lovely GNOME features like power management, etc.)

## Installation from scratch
Using `make`:
* download the repo.
* on the terminal go to the repo directory.
* `sudo make install`

## Recommended additions to your Sdorfehs config
I recommend that you have GNOME Flashback installed and add an exec step to your `~/.config/sdorfehs/config`:

```
exec gnome-flashback
```

## Contributing
* [Guidelines](https://github.com/i3-gnome/i3-gnome/wiki/Contributing)

---
Original Author/Copyright: 
MIT - © 2014-2017 [Lorenzo Villani](https://github.com/lvillani). 2017 i3-gnome team.
