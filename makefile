main:
	openssl genrsa -des3 -out privkey.pem 4096

install:
	install -m 755 local-iglu $(DESTDIR)/usr/sbin/
	install -d xbps.d $(DESTDIR)/etc/
	install -m 600 privkey.pem $(DESTDIR)/opt/
