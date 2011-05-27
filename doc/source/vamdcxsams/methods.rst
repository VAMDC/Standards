.. _methods:

Methods
=========

	The **Methods** branch provides the list of different methods used to
	produce numerical data. Defined by **MethodsType**, it contains one or
	more elements **Method**

	.. image:: images/methods/Methods.png


.. _Method:

Method
--------

	Element **Method** provides information on a specific method used to
	produce numerical data reported in the XML file.  Examples of
	numerical data include energy levels for atoms and molecules, wavelengths for
	radiative transitions, cross sections for atomic and molecular collisions,
	etc.  Each **Method** element is identified by a **methodID** which is then
	referred to in the data section.

	.. image:: images/methods/Method.png

	Extending :ref:`PrimaryType`, **Method** has the following additional attributes and elements:
	
	*	mandatory attribute **methodID** of type :ref:`MethodIDType`, which is the method identification
		to which any numerical data can refer. This attribute must be composed of a capital
		letter **M** followed by one or more symbols.
	*	optional attribute **functionRef** of type :ref:`FunctionRefType`, which is a
		reference to a fit function that was used within this particular method.
	*	mandatory element **Category**, defined by type **CategoryType** as an item from the following
		list:
		
		-	experiment
		-	theory
		-	ritz
		-	recommended
		-	evaluated
		-	empirical
		-	scalingLaw
		-	semiempirical
		-	compilation
		-	derived
		-	observed
	
	
	*	mandatory string element **Description**, which is a free format text to
		describe the method.
	