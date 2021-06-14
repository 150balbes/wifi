
KSRC ?=


all:
	make -C $(KSRC) M=`pwd` modules 

clean:
	make -C $(KSRC) M=`pwd` modules clean
	rm -rf modules.order

obj-m	+= es8323.o
