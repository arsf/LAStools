PREFIX=/usr/local
EXEC_PREFIX = ${PREFIX}/bin

all:
	cd LASlib && make
	cd LASzip && make
	cd src && make

clean:
	cd LASlib && make clean
	cd LASzip && make clean
	cd src && make clean

clobber:
	cd LASlib && make clobber
	cd LASzip && make clobber
	cd src && make clobber
	cd bin && rm -rf lasinfo laszip lasprecision las2txt txt2las las2las lasdiff lasmerge lasthin las2shp shp2las las2iso las2tin lasboundary lasview las2dem lasindex

install:
	cd LASlib && make install PREFIX=${PREFIX}
	install -d ${EXEC_PREFIX}
	install -C -m 0755 bin/las2las ${EXEC_PREFIX}
	install -C -m 0755 bin/las2txt ${EXEC_PREFIX}
	install -C -m 0755 bin/lasdiff ${EXEC_PREFIX}
	install -C -m 0755 bin/lasindex ${EXEC_PREFIX}
	install -C -m 0755 bin/lasinfo ${EXEC_PREFIX}
	install -C -m 0755 bin/lasmerge ${EXEC_PREFIX}
	install -C -m 0755 bin/lasprecision ${EXEC_PREFIX}
	install -C -m 0755 bin/laszip ${EXEC_PREFIX}
	install -C -m 0755 bin/txt2las ${EXEC_PREFIX}

.PHONY: install clean clobber
