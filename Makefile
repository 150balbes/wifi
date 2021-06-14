
KSRC ?=

all:
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) -C $(KSRC) M=$(shell pwd)  modules 

clean:
	make -C $(KSRC) M=`pwd` modules clean
	rm -rf modules.order

obj-m	+= rockchip_pwm_remotectl.o
