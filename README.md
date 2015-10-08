This contains the Sphinx-based documentation for the VAMDC standards.

See http://www.vamdc.eu and http://sphinx-doc.org/

To build the documentation in PDF format:

*	When first cloned the repository, run **setup_dirs.sh**
	to create the required directory structure.
	This step is needed only once.

*	run **buildall.sh** to build everything.
	PDF files will be in pdf/ directory
	HTML documentation will be in html.tbz2

*	If you wish to rebuild individual pdf documents, do the following:

	$ cd pdf_xxx

	$ make clean latexpdf

	The resulting PDF document may be foun in the pdf_xxx/build/latex/ folder.

