PREFIX=/usr/local
EXEC_PREFIX = ${PREFIX}/bin # not used
INCLUDEDIR = ${PREFIX}/include
LIBDIR= ${PREFIX}/lib64

export VERSION=20160606

all:
	cd src && make
	cd example && make
	sed -e 's![@]prefix[@]!${PREFIX}!g' \
	              -e 's![@]exec_prefix[@]!${EXEC_PREFIX}!g'\
	              -e 's![@]includedir[@]!${INCLUDEDIR}!g'\
	              -e 's![@]libdir[@]!${LIBDIR}!g'\
	              -e 's![@]VERSION[@]!${VERSION}!g'\
	              laslib.pc.in > laslib.pc

clean:
	cd src && make clean
	cd example && make clean
	rm -f laslib.pc
	rm -f lib/*
	rm -f libD/*

clobber:
	cd src && make clobber
	cd example && make clobber
	rm -f laslib.pc
	rm -f lib/*
	rm -f libD/*

install:
	install -d ${INCLUDEDIR}/laslib
	install -C -m 0644 inc/* ${INCLUDEDIR}/laslib
	install -d ${LIBDIR}
	install -C -m 0644 lib/liblaslib.so.${VERSION} ${LIBDIR}
	install -d ${LIBDIR}/pkgconfig
	install -C -m 0644 laslib.pc ${LIBDIR}/pkgconfig
	ln -sf ${LIBDIR}/liblaslib.so.${VERSION} ${LIBDIR}/liblaslib.so

.PHONY: install clean clobber
