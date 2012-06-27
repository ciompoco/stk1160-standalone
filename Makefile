stk1160-y := stk1160-core.o stk1160-v4l.o stk1160-video.o stk1160-i2c.o stk1160-ac97.o

obj-$(CONFIG_VIDEO_STK1160) += stk1160.o

ccflags-y += -Wall
ccflags-y += -Idrivers/media/video

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

install:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules_install