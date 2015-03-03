PPREFIX=/usr/local
INCLUDEDIR = ${PREFIX}/include
LIBDIR= ${PREFIX}/lib64

all:
	cd example && make

clean:
	cd example && make clean
	rm -f src/*.o

clobber:
	cd example && make clobber
	rm -f src/*.o

install:
	install -d ${INCLUDEDIR}/laslib
	install -C -m 0644 src/*.hpp ${INCLUDEDIR}/laslib
