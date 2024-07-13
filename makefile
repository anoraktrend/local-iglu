main:
	openssl genrsa -des3 -out privkey.pem 4096

install:
	install -m 755 local-iglu $(DESTDIR)/usr/sbin/
	cp -r xbps.d /etc/
	install -m 600 privkey.pem $(DESTDIR)/opt/
