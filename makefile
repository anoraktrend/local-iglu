main:
	openssl genrsa -des3 -out privkey.pem 4096

install:
	install -m 755 local-iglu $DESTDIR/usr/sbin/
	install xbps.d $DESTDIR/etc/xbps.d
	install -m 600 privkey.pm $DESTDIR/opt/
