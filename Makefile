KDIR := /lib/modules/$(shell uname -r)/build
obj-m += hello.o
all:
	$(MAKE) -C $(KDIR) M=$(shell pwd) modules
clean:
	rm -rf *.o *.ko *.mod.* *.symvers *.order
