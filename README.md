This contains a disassembly of the Apple II version of the Cauzin
Softstrip "Stripper" program whic creates Softstrip barcodes. The
program only works on DOS 3.3 and prints the codes directly on an
Epson printer.

The program doesn't seem to actually work. It complains of read errors
when it goes to load the file that is to be encoded. Even after
patching around it, the program just goes into a loop and never sends
any output to the printer other than a couple of initialization codes.

It definitely looks like the program was written in a high level
language and then compiled. I'm not sure what language it was written
in or what compiler was used. The program spends 99% of its time
shuffling pointers to pointers in and out of the zero page. One of the
things it likes to do most is push an address onto the stack, call a
subroutine to allocate some space below HIMEM and copy it there, then
copy the address to the zero page, then shuffle some more pointers
around, and finally release the space below HIMEM.

The files are:

  * STRIPPER.E.bas - The BASIC portion of the entire program in plain ASCII
  * STRIPPER.E#fc0801 - The tokenized Applesoft BASIC with machine language program
  * Stripper-Epson.asm - The disassembled machine language program
  * Stripper-Epson.bin - The machine language program split from the BASIC program
  * Stripper-Epson.hex - a hex dump of Stripper-Epson.bin with addresses starting at 0x900

The disassembly is in [Macroassembler
AS](http://john.ccac.rwth-aachen.de:8000/as/) cross assembler format
and is verified to assemble and produce an exact copy of
Stripper-Epson.bin.

The main purpose of disassembling the Cauzin program is to try to
learn how Softstrips are encoded. There is [partial documentation on
the Softstrip format
here](http://mirrors.apple2.org.za/ftp.apple.asimov.net/documentation/hardware/io/cauzin_softstrip/Cauzin%20Softstrip%20StripWare%20Stripper%20Software%20Manual.pdf)
and [documentation on the reader hardware
here](https://archive.org/details/CauzinSoftstrip).

http://www.apple2scans.net/2015/12/20/cauzin-softstrip-reader-manuals-software-etc/
