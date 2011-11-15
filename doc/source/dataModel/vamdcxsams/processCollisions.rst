.. _Collisions:

Processes.Collisions
=======================

The element **Collisions** of the **Processes** branch, 
defined by **CollisionsType**, contains one or more **CollisionalTransition** elements.

.. _Collision:

CollisionalTransition
------------------------

	The complex element **CollisionalTransition** provides:
	
	*	the physical information to fully describe any
		collision involving photons, atoms, ions, molecules and elementary particles such as
		electrons or photons, and any particle solid interaction (PSI)
		- reaction process type
		- reactants
		- intermediate states if known
		- threshold if applicable
	*	the numerical data, either in a tabulated form or described by a fit function, or both,
		in :ref:`DataSet` elements.

	.. image:: images/collisions/CollisionalTransition.png
	
	Element **CollisionalTransition**, defined by type **CollisionalTransitionType**,
	extends :ref:`PrimaryType`, adding following attribures and elements:

	*	mandatory **id** attribute of type :ref:`ProcessIDType`,
	*	optional **groupLabel** attribute of type *String*, used to indicate arbitrary process groups;
	*	optional element **ProcessClass** of type **ProcessClassType**, that describes the
		collision process or particle surface interaction. It is a combination of
		three optional elements:
		
		-	**UserDefinition** for arbitrary string description of process,
		-	list of **Code** elements, defined by **CodeType**, identifying the process
			using XSAMS-specific 4-letter :ref:`XSAMSProcessCodes`.
			Taking examples for common processes, excitation has one value *exci* and dissociative
			recombination has two values *diss* and *reco*.
		-	list of **IAEACode** elements, defined by **IAEACodeType**, identifies the process 
			using :ref:`IAEAcodes` from [IAEAProc]_. The initial purpose of IAEA codes was the development of
			search engines for atomic and molecular data. Processes, represented with a
			three-letter code, are classified in four categories: electron collisions,
			photon collisions, heavy particle collisions and particle surface interactions
	*	mandatory list of **Reactant** elements, defined by :ref:`SpeciesStateRefType`, 
		having two or more elements,
	*	optional list of **IntermediateState** elements, defined by :ref:`SpeciesStateRefType`.
	*	optional list of **Product** elements, defined by :ref:`SpeciesStateRefType`.
		Reactants, intermediate states and products are defined by references to species or to states,
		or both of them, using **SpeciesRef** (:ref:`StateRefType`) and **StateRef** (:ref:`SpeciesRefType`) elements.
		See :ref:`Species` chapter for a full description of all possible states.
	
	*	optional **Threshold** element, of :ref:`DataType`, giving the reaction threshold, i.e. the minimum energy required to initiate a reaction.
		This kind of data is needed in using data such as rate coefficients.
	*	mandatory **DataSets** element, that provides numerical data for a specific reaction.
		It is an unbounded sequence of **DataSet** elements, therefore different datasets may be provided for
		the same reaction.  Datasets differ at this level by their **dataDescription** attribute, such as
		rate coefficients or cross sections for collisions,
		reflection coefficients or mean penetration depth for PSI data, etc.



.. _DataSet:

DataSet
----------

	.. image:: images/collisions/DataSet.png

	Element **DataSet**, defined by type **DataSetType**, provides numerical
	data as tabulated data ( **TabulatedData** element)
	or as the parameters values and validity limits of a fit function 
	(**FitData** element).  The fit function is defined
	in the :ref:`Functions` branch.
	Extending :ref:`PrimaryType`, it adds following attributes and elements:
	
	*	string attribute **dataDescription**, that specifies the type of data.
		Allowed values are:
		
		- crossSection
		- collisionStrength
		- rateCoefficient
		- probability
		- effectiveCollisionStrength
		- sputteringYield
		- sputteredEnergyCoefficient
		- particleReflectionCoefficient
		- energyReflectionCoefficient
		- meanPenetrationDepth
		
	*	optional list of :ref:`FitData` elements
	*	optional list of :ref:`TabulatedData` elements 
	
	Data are therefore fit data or tabulated data or both. Data may originate from different sources or
	be produced using different methods, but must refer to the same data quantity,
	defined in the **dataDescription**.
	For different quantities, use separate **DataSet** elements.
	
.. _FitData:

FitData
----------

	.. image:: images/collisions/FitData.png

	The **FitData** element of type **FitDataType**
	gives all data necessary to calculate the numerical output
	using a fit function. Function reference should be given in the **functionRef** attribute of
	**FitParameters** element. Validity limits of the arguments (x1, x2...) and the fit parameter values 
	are also provided there.
	
	To complete the description, the fit accuracy, the physical
	uncertainty and the data production date may be reported.

	Extending :ref:`PrimaryType`, **FitData** defines following elements:

	*	mandatory **FitParameters** element, defined by :ref:`FitParametersType`,
		fully describing the set of parameters needed to calculate function value;
	*	optional **FitAccuracy** string element, filled in free format,
	*	optional **PhysicalUncertainty** string element, filled in free format,
	*	optional **ProductionDate** element of type **xs:date**, that may keep the production date of the fit.
	
	
.. _TabulatedData:

TabulatedData
-----------------

	.. image:: images/collisions/TabulatedData.png
	
	Extending the base :ref:`SimpleDataTableType`, it adds the elements
	:ref:`ReferenceFrame`, **PhysicalUncertainty** and **ProductionDate** (see
	description of :ref:`FitData` element for definitions).
	

.. _ReferenceFrame:

ReferenceFrame
+++++++++++++++

	For numerical data depending on such parameters as energy or velocity, it is important to know
	in which frame this dependence is calculated. The possible values of the element **ReferenceFrame**
	are:
	
	*	**CenterOfMass**
	*	**LaboratoryFrame**
	*	**TargetFrame**


