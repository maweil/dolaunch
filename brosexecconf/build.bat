rm *.elf *.dol *.gci
cp Makefile.text Makefile
make clean
make
dolxz.exe brosexecconf-text.dol boot.dol -cube
dol2gci.exe boot.dol boot.gci
mv boot.dol boot-text.dol
mv boot.gci boot-text.gci
cp Makefile.back Makefile
make clean
make
dolxz.exe brosexecconf-back.dol boot.dol -cube
dol2gci.exe boot.dol boot.gci
mv boot.dol boot-back.dol
mv boot.gci boot-back.gci
rm Makefile