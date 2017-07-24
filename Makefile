bug: bug.o
	g++ -Wall bug.o  -Os -g -fno-common -fno-strict-aliasing -o bug  -L/usr/lib/x86_64-linux-gnu -lmysqlclient -lpthread -lz -lm -lrt -ldl

bug.o:
	g++ -Wall -g -O0 -c bug.cpp -I/usr/include/mysql/  -Os -g -fno-common -fno-strict-aliasing  -o bug.o

clean:
	-rm -f bug.o bug
