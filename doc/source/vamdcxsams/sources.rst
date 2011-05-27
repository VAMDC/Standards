.. _Sources:

Sources
===============

The **Sources** part of XSAMS describes the sources of data, i.e., journal
articles, books, proceedings, personal communications, etc. The data sources
described here are then referred to in other parts of an XML document by their
references (see below).

Sources
-------------

	.. image:: images/Sources.png

	The element **Sources** of type **SourcesType** is a container for one or
	more **Source** elements each of type **SourceType**.

.. _Source:

Source
------------

	.. image:: images/Source.png
		:scale: 65 %

	**Source** element describes a data source, bibliography item 
	or any other reference relevant to the data element.
	
	It has the following attributes and child elements:
	
	*	Mandatory **sourceID** attribute, of type :ref:`SourceIDType`.
		This attribute assigns a unique ID to each data source. Must begin with the upper-case letter **B** 
		followed by one or more characters. The **sourceID** is then referred to with the help of 
		element **SourceRef** of the :ref:`PrimaryType`.
	
	*	Mandatory **Category** element, defined by **CategoryType**, that may take one of the following values:
	
		- book
		- database
		- journal
		- preprint
		- private communication
		- proceedings
		- report
		- theses
	
	*	Mandatory **SourceName** element. 
		It's value should be a string containing the name of a journal, proceedings, book, etc.
		Examples: **Physical Review A**, **PhysRevA**, **PRA**, **Proceedings
		of the 10th Conference on something**.
	
	*	Mandatory **Year** element of type **xs:gYear**.
		Examples: **2009**
	
	*	Mandatory **Authors** element, containing unordered list of **Author** elements, 
		each of type **AuthorType**.
		
		.. image:: images/AuthorType.png
		
		**AuthorType** contains:
		
		- mandatory **Name** element that should contain author's name, in form of a string. 
		- optional **Address** element, that may contain author's e-mail or institutional address.
		
	*	Optional **Title** element.
	*	Optional **Volume** element for journal volume.
	*	Optional **DigitalObjectIdentifier** [DOI]_ element.
	*	Optional **PageBegin** element for initial page of article.
	*	Optional **PageEnd** element for final page.
	*	Optional **UniformResourceIdentifier** element of type **xs:anyURI** 
		that may contain reference to on-line copy of article, database access URI, 
		or any other relevant URI.
	*	Optional **Publisher** element.
	*	Optional **City** element.
	*	Optional **Editors** element that may contain a list of **Name** elements.
		
		.. image:: images/EditorsType.png
		
	*	Optional **ProductionDate** element of type **xs:date**, 
	*	Optional **Version** element
	*	Optional **Comments** element
	*	Optional **BibTeX** element for the BibTeX representation of this reference. That element 
		may be useful if you already have data in BibTeX format in your database and wish to export 
		some fields that can't be represented in [XSAMS]_.
		
	