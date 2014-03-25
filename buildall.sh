#!/bin/bash

cd doc
make clean html
cd build/html
tar -cjf ../../../html.tbz2 ./

cd ../../../

for pdfdir in pdf_*
do
	cd $pdfdir
	make clean latexpdf
	cd ../
done

find ./pdf_* -iname *.pdf -exec cp \{\} ./pdf/ \;
tar -cjf pdf.tbz2 ./pdf/
