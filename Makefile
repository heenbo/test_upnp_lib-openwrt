CROSS_COMPILE = mips-openwrt-linux-
CC = gcc
SOURCE = main.c ctrlpoint.c
PROJECT = main.o ctrlpoint.o
OBJECT = upnp_test

LDLIB = -L./lib -lixml -lupnp -pthread -lthreadutil
CFLAGS = -g -Wall -O2 -I./include

all : $(OBJECT)

$(OBJECT):$(PROJECT)
	${CROSS_COMPILE}${CC} $^ -o $@ ${LDLIB}
$(PROJECT):$(SOURCE)
	${CROSS_COMPILE}${CC} $^ -c ${CFLAGS}
	
clean : 
	-rm -f *.o $(OBJECT)
