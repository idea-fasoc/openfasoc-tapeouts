COMMON = common
ASM = src_asm
C = src_c
HEX = hex
TESTDATA = test_data

TEST = saxpy
SRC = src_asm/$(TEST).s

CRT = $(COMMON)/crt.s
LINKERS = $(COMMON)/linker.lds
ASLINKERS = $(COMMON)/aslinker.lds

DEBUG_FLAG = -g
CFLAGS = -mno-relax -march=rv32im -mabi=ilp32 -nostartfiles -std=gnu11 -mstrict-align -mno-div 
OFLAGS = -O0
ASFLAGS = -mno-relax -march=rv32im -mabi=ilp32 -nostartfiles -Wno-main -mstrict-align
OBJFLAGS = -SD -M no-aliases 
OBJDFLAGS = -SD -M numeric,no-aliases

GCC = riscv64-unknown-elf-gcc
OBJDUMP = riscv64-unknown-elf-objdump
AS = riscv64-unknown-elf-as
ELF2HEX = elf2hex

# Programs
all:

compile: $(CRT) $(LINKERS)
	$(GCC) $(CFLAGS) $(OFLAGS) $(CRT) $(SRC) -T $(LINKERS) -o program.elf
	$(GCC) $(CFLAGS) $(DEBUG_FLAG) $(CRT) $(SRC) -T $(LINKERS) -o program.debug.elf
assemble: $(ASLINKERS)
	$(GCC) $(ASFLAGS) $(SRC) -T $(ASLINKERS) -o program.elf 
	cp program.elf program.debug.elf
disassemble: program.debug.elf
	$(OBJDUMP) $(OBJFLAGS) program.debug.elf > program.dump
	$(OBJDUMP) $(OBJDFLAGS) program.debug.elf > program.debug.dump
	rm program.debug.elf
hex: program.elf
	$(ELF2HEX) 4 2048 program.elf > program.hex
	cp program.hex $(HEX)/$(TEST).hex
	python $(TESTDATA)/trim.py $(TEST)
	rm program*

program: compile disassemble hex
	@:

debug_program:
	gcc -lm -g -std=gnu11 -DDEBUG $(SRC) -o debug_bin

assembly: assemble disassemble hex
	@:

clean:
	rm -rvf program.hex program.dump program.debug.dump program.elf program.debug.elf debug_bin	\

nuke:	clean
