#!/bin/bash

function setup_dir {
	#$1 is the dir name
	#$2 is the source folder name

	if [ -d $1 ]
	  then
		return 1;
	fi
	mkdir $1
	cd $1
	ln -s ../doc/Makefile ./
	ln -s ../doc/$2 source
	ln -s ../doc/source/_static/
	cd source/_templates/
	LNPATH=`echo $2 | sed -e s/[a-zA-Z]*/../g`
	
	ln -s $LNPATH/_templates/disclaimerPart.tex
	cd ../../../
}

mkdir pdf

setup_dir pdf_changelog source/dataModel/changelog
setup_dir pdf_consumer source/dataConsumerProtocol
setup_dir pdf_dataaccess source/dataAccessProtocol
setup_dir pdf_dictionary source/dictionary
setup_dir pdf_inchi source/inchi
setup_dir pdf_management source/management
setup_dir pdf_querylang source/queryLanguage
setup_dir pdf_nodeimpl source/nodeguidelines
setup_dir pdf_registry source/registry
setup_dir pdf_vamdcxsams source/dataModel/vamdcxsams
