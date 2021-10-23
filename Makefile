obj-m := lab1_2.o

KDIR := /home/iliyash/kernel_src/linux

all:
	cppcheck --enable=all --inconclusive --library=posix lab1_2.c 
	$(MAKE) -C $(KDIR) M=$$PWD 



clean:
	rm -rf lab1_2 *.o *.ko *.mod *.dwo *.mod.c Module.symvers modules.order
	rm -rf lab1 *.o *.ko *.mod *.dwo *.mod.c Module.symvers modules.order
