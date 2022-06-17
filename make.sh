
#!/bin/env bash

file=$1
distdir=dist

nasm -f elf -o $distdir/$file.o $file.asm
ld -m elf_i386 -s -o $distdir/$file $distdir/$file.o