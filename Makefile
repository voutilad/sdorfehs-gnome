#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_SDORFEHS_GNOME = $(PREFIX)/bin/sdorfehs-gnome
PATH_SDORFEHS_GNOME_DESKTOP = $(PREFIX)/share/applications/sdorfehs-gnome.desktop
PATH_SDORFEHS_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/sdorfehs-gnome.session
PATH_SDORFEHS_GNOME_XSESSION = $(PREFIX)/share/xsessions/sdorfehs-gnome.desktop
PATH_GNOME_SESSION_SDORFEHS = $(PREFIX)/bin/gnome-session-sdorfehs

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/sdorfehs-gnome-xsession.desktop $(PATH_SDORFEHS_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/sdorfehs-gnome.desktop $(PATH_SDORFEHS_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/sdorfehs-gnome.session $(PATH_SDORFEHS_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/sdorfehs-gnome $(PATH_SDORFEHS_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-sdorfehs $(PATH_GNOME_SESSION_SDORFEHS)



uninstall:
	rm -f $(PATH_SDORFEHS_GNOME)
	rm -f $(PATH_SDORFEHS_GNOME_DESKTOP)
	rm -f $(PATH_SDORFEHS_GNOME_SESSION)
	rm -f $(PATH_SDORFEHS_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_SDORFEHS)



.PHONY: all install uninstall
