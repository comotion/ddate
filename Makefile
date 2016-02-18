PREFIX = /usr

all: ddate ddate.1.gz

ddate.1.gz: ddate.1
	gzip -c -9 $<>>$@

install: ddate ddate.1.gz
	install -d ${DESTDIR}${PREFIX}/bin
	install -m 755 ddate ${DESTDIR}${PREFIX}/bin/ddate
	install -d ${DESTDIR}${PREFIX}/share/man/man1
	install -d ${DESTDIR}${PREFIX}/share/man/man1/ddate.1.gz

clean:
	rm -f ddate ddate.1.gz


.PHONY: all install clean
