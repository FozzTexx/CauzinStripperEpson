This contains a disassembly of the Apple II version of the Cauzin
Softstrip "Stripper" program whic creates Softstrip barcodes. The
program only works on DOS 3.3 and prints the codes directly on an
Epson printer.

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
