all: tokthr tokthr-symbols tokthr-disassembly
tokthr: tokthr.S
	gcc -m32 -nostdlib -static -o $@ $<
tokthr-symbols: tokthr
	(echo '-*- auto-revert -*-'; nm $<) > $@
tokthr-disassembly: tokthr
	(echo '-*- auto-revert -*-'; objdump -D $<) > $@
