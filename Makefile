all:
	arm-linux-gcc start.S -o start.o -c
	arm-linux-ld start.o -o start.elf -Tstart.lds
	arm-linux-objcopy -O binary -S start.elf start.bin
