### Requirement
-----------------------------------------------------------

You must have `riscv64-unknown-elf` and `elf2hex` installed on your machine. They are from [riscv-gnu-toolchain](https://github.com/riscv-collab/riscv-gnu-toolchain) and [elf2hex](https://github.com/sifive/elf2hex).

If you are in `vlsipool`, try this command instead. 
```
module load riscv/9.2
```

### Program Loading Compilation
-----------------------------------------------------------

Build for `assembly code`:
```
make assembly SOURCE_S=<some_test>
```

Build for `c code`:
```
make program SOURCE_C=<some_test>
```

32-bits hex patterns will be placed in a directory named `hex`