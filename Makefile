#!/usr/bin/make -f

THEME      =    Manjaro Mate Wallpapers
DTHEME     =	manjaro-mate
PREFIX     = 	/usr
DPATH 	   =	$(DESTDIR)$(PREFIX)/share/backgrounds/$(DTHEME)
DXMLMATE   =    $(DESTDIR)$(PREFIX)/share/mate-background-properties
DEL 	   =  	rm -Rf
INSTD 	   =	install -Dm644 -t
	
install:
	./backgrounds-xml.sh
	mkdir -p $(DXMLMATE)
	cp -f $(THEME).xml $(DXMLMATE)
	$(INSTD) $(DPATH) *.jpg 
	
uninstall:
	$(DEL) $(DPATH)
	rm -f $(DXMLMATE)/$(THEME).xml
 
