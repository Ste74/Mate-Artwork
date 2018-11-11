#!/usr/bin/make -f

DTHEME     =	manjaro-mate
PREFIX     = 	/usr
DPATH 	   =	$(DESTDIR)$(PREFIX)/share/backgrounds/$(DTHEME)
DXMLMATE   =    $(DESTDIR)$(PREFIX)/share/mate-background-properties
DEL 	   =  	rm -Rf
INSTD 	   =	install -Dm644 -t
	
install:
	./backgrounds-xml.sh
	mkdir -p $(DXMLMATE)
	cp -f $(DTHEME).xml $(DXMLMATE)
	$(INSTD) $(DPATH) *.jpg 
	
uninstall:
	$(DEL) $(DPATH)
	rm -f $(DXMLMATE)/$(DTHEME).xml
 
