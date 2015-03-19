default:
	sh make.sh

dontinstall:
	mkdir -p $(DESTDIR)/etc/xdg
	mkdir -p $(DESTDIR)/etc/xdg/upstart
	cp etc-xdg-upstart-syncthing.conf $(DESTDIR)/etc/xdg/upstart/syncthing.conf
