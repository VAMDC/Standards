Common Types
================

For the sake of code reuse and reduction of complexity, most of the elements and
element attributes of schema are defined as separate types.

Simple Types
---------------

	Simple types are used mostly within attributes.
	For example, all reference types, defining **ID**/**IDREF** pairs value restriction, are
	defined as simple types.
	Here, only types that are used in multiple places of schema are indicated.
	Types, specific to branches: species(atoms, molecules),processes (radiative,collisions) 
	are described in respective sections of this manual.

.. _AngularMomentumProjectionType:

AngularMomentumProjectionType
+++++++++++++++++++++++++++++++

	Restriction of double type.
	Allowed values: integer or half-integer. Examples: **-11.5**, **2**,
	**+2.0**, **-0.5**.

.. _AngularMomentumType:

AngularMomentumType
++++++++++++++++++++++++++++++

	Restriction of double type.
	Allowed values: non-negative integer or half-integer. Examples: **11.5**,
	**2**, **2.0**, **0.5**.

DataDescriptionType
++++++++++++++++++++++++++++++

	Descriptor for the type of a collisonal parameter, can take one of the
	following values:

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

DoubleListType
++++++++++++++++++++++++++++++

	A list of values of type double

.. _ElementSymbolType:

ElementSymbolType
++++++++++++++++++++++++++++++

	Symbol for a chemical element. 
	Allowed values: an upper-case letter that may be followed by a lower-case
	letter. Examples: **D**, **Hf**, **P**.

.. _EnvironmentIDType:

EnvironmentIDType
++++++++++++++++++++++++++++++

	Identifier for environments.
	May contain any symbols except spaces, first symbol must be **E**.
	
EnvironmentRefType
++++++++++++++++++++++++++++++

	Reference for :ref:`EnvironmentIDType`

.. _FunctionIDType:

FunctionIDType
++++++++++++++++++++++++++++++

	Identifier for functions.
	May contain any symbols except spaces, first symbol must be **F**.

.. _FunctionRefType:

FunctionRefType
++++++++++++++++++++++++++++++

	Reference for :ref:`FunctionIDType`




.. _MethodIDType:

MethodIDType
++++++++++++++++++++++++++++++

	Identifier for methods of data production.
	May contain any symbols except spaces, first symbol must be **M**.

.. _MethodRefType:

MethodRefType
++++++++++++++++++++++++++++++

	Reference for :ref:`MethodIDType`

.. _MixingClassType:

MixingClassType
++++++++++++++++++++++++++++++

	Indicates the nature of the mixing coefficients in the expansion of a
	wave function in a specific basis. Allowed values:
	
	* squared
	* signed

.. _NormalModeIDType:

NormalModeIDType
++++++++++++++++++++++++++++++

	Identifier for vibrational normal modes for complex molecules..
	May contain any symbols except spaces, first symbol must be **V**.

NormalModeRefType
++++++++++++++++++++++++++++++

	Reference for :ref:`NormalModeIDType`

OrbitalAngularMomentumSymbolType
+++++++++++++++++++++++++++++++++

	symbol for OrbitalAngularMomentumType, any lowercase letter is a valid value.

.. _ParityType:

ParityType
++++++++++++++++++++++++++++++

	Allowed values:
	
	- even
	- odd
	- undefined

.. _PrincipalQuantumNumberType:

PrincipalQuantumNumberType
++++++++++++++++++++++++++++++

	Allowed values: positive integer.

.. _ReferenceFrameType:

ReferenceFrameType
++++++++++++++++++++++++++++++

	Descriptor for the frame of reference:

	- CenterOfMass
	- LaboratoryFrame
	- TargetFrame

.. _SourceIDType:

SourceIDType
++++++++++++++++++++++++++++++

	Identifier for :ref:`Sources` of data.
	May contain any symbols except spaces, first symbol must be **B**.

.. _SpeciesIDType:

SpeciesIDType
++++++++++++++++++++++++++++++

	Identifier for species. Used in Atoms and Molecules.
	May contain any symbols except spaces, first symbol must be **X**.

.. _SpeciesRefType:

SpeciesRefType
++++++++++++++++++++++++++++++

	Reference for :ref:`SpeciesIDType`

.. _StateIDType:

StateIDType
++++++++++++++++++++++++++++++

	Identifier for a specific state. Used in all species.
	May contain any symbols except spaces, first symbol must be **S**.

.. _StateRefType:

StateRefType
++++++++++++++++++++++++++++++

	Reference for :ref:`StateIDType`

.. _StringListType:

StringListType
++++++++++++++++++++++++++++++

	Space-separated list of arbitrary strings.

.. _UnitsType:

UnitsType
++++++++++++++++++++++++++++++

	Defines a list of allowed units within XSAMS document.
	This list is updated and extended as necessary on data producers request.
	[UnitsML] approach may be adopted in later versions of schema.
	
	The positive powers are indicated by digits, the negative powers follow 
	the backslash symbol **/**.
	For unitless (dimensionless) parameters, use **unitless**.
	
	So far, this list contains the following values. If any additional values are required,
	contact responsibles for schema.

	- undef
	- eV/amu
	- keV/amu
	- MeV/amu
	- eV
	- keV
	- MeV
	- au
	- 1/cm
	- J
	- Ry
	- unitless
	- kJ/mol
	- kcal/mol
	- K
	- Hz
	- kHz
	- MHz
	- m
	- cm
	- A
	- nm
	- deg
	- rad
	- srad
	- s
	- m3/s
	- cm3/s
	- cm6/s
	- m2
	- cm2
	- b
	- Mb
	- 1/s
	- C.m
	- J/T
	- C.m2
	- m/s
	- cm/s
	- C
	- electron
	- g
	- amu
	- kg
	- 1/m2/s
	- 1/cm2/s
	- J/m2/s
	- J/cm2/s
	- 1/m2
	- 1/cm2
	- 1/m3
	- 1/cm3
	- J/m2
	- J/cm2
	- W/m2
	- W/cm2
	- W
	- atm
	- km/mol
	- 1/cm2/atm
	- 1/cm/atm



Complex Types
-----------------

.. _PrimaryType:

PrimaryType
+++++++++++++++++++

	.. image:: images/PrimaryType.png
	
	This is the fundamental elementary type used to built other types as
	extensions. It contains:
		
	*	optional **methodRef** attribute of type :ref:`MethodRefType`,
	*	one or more **SourceRef** elements, containing source identifiers,
	*	optional **Comments** element for arbitrary comments.
	

.. _ChemicalElementType:

ChemicalElementType
++++++++++++++++++++++

	The mandatory element **NuclearCharge** must be a positive integer. The
	optional element **ElementSymbol** must begin with an upper-case letter
	which may be followed by a lower-case letter. Examples: **P**, **T**, **Au**.

	.. image:: images/ChemicalElementType.png
	

.. _DataType:

DataType
+++++++++++++++++++

	.. image:: images/types/DataType.png
	
	Extension of the :ref:`PrimaryType` which
	is used for description of numerical data, including units and accuracy.
	Contains a mandatory **Value** element of type :ref:`ValueType` and an
	optional **Accuracy** element, which is for now just a string, 
	but will be updated in future version of [XSAMS]_.



.. _FitParametersType:

FitParametersType
++++++++++++++++++++

	.. image:: images/types/FitParametersType.png
	
	**FitParametersType** defines a full set of data required to calculate some quantity
	using the predefined function. For a function definition, see :ref:`Functions` branch of XSAMS.
	Following attributes and elements are defined:
	
	-	**functionRef** attribute, of type :ref:`FunctionRefType`,
		defining the reference to a function used,
	-	list of **FitArgument** elements, of type :ref:`ArgumentType`, defining
		validity limits of arguments in particular fit,
	-	list of **FitParameter** elements, of type **NamedDataType**,
		giving the function parameters values, possibly with source references.
		The **NamedDataType** is an extension of :ref:`DataType` with a mandatory **name** string attribute.
	
	

.. _LifeTimeType:

LifeTimeType
++++++++++++++
	
	Extension of the :ref:`DataType` that defines the additional attribute **decay** 
	with possible values:
	
		* total,
		* totalRadiative,
		* totalNonRadiative.
		
	The type is used both in atomic and molecular states to define state lifetime.
	

.. _SpeciesStateRefType:

SpeciesStateRefType
++++++++++++++++++++
	
	This type allows to define the **SpeciesRef** (:ref:`SpeciesRefType`) or
	**StateRef**(:ref:`StateRefType`) child elements (or both).
	At least one should be specified, but it is always kind to explicitly provide **SpeciesRef**.
	
	.. image:: images/types/SpeciesStateRefType.png


.. _ValueType:

ValueType
++++++++++++

	.. image:: images/ValueType.png
	
	The data must be of type **xs:double** with the mandatory **units** attribute of type :ref:`UnitsType`

Data structures
----------------------

	In this section generic data structures that are used in multiple places in schema are described.

.. _DataSeriesType:

DataSeriesType
+++++++++++++++++
	
	DataSeriesType allows description of data as a list of values or a linear sequence, including errors.

	
	.. image:: images/types/DataSeriesType.png
	
	Extends :ref:`PrimaryType` to allow source references, adds following attributes and elements:
	
	*	optional string attribute **parameter** that may contain the function parameter name or just
		a description of meaning of sequence.
	*	optional attribute **units** of :ref:`UnitsType` to define the data units
	*	optional attribute **id** of type **xs:ID** that is reserved for future use.
	*	mandatory choice of 
	
		-	**DataList** element of :ref:`DataListType` to represent a space-separated list of *double* values.
		-	**LinearSequence** element of :ref:`LinearSequenceType`. Should be used if
			data is a linear sequence. Example would be to represent frequency/wavelength points for spectrum data.
		-	**DataFile** string element that should contain a file name, containing space-separated or
			newline-separated set of data. This element is also reserved for future use, currently no software
			is able to pass data files along with XSAMS instance documents.
			
	*	optional choise of **Error** or **ErrorList** to define errors for data points.
		List may be used if error values are different for different points, 
		otherwise single **Error** element should be used.
		
		
		
.. _DataTableType:

DataTableType
+++++++++++++

	**DataTableType** is the type used in Collision's :ref:`DataXY` element.

	.. image:: images/types/DataTableType.png
	
	DataTableType has following attributes and elements defined:
	
	*	mandatory **units** attribute of type :ref:`UnitsType`,
	*	optional **parameter** attribute to describe the type of unit (e.g.,
		energy, time, or surface...)
	*	mandatory **DataList** element, of type :ref:`DataListType`,
		providing the numerical values as a list.
	*	optional **Error**, providing centered error bar, or
	*	**NegativeError** and
	*	**PositiveError** elements, providing asymmetric error bar;
	*	optional **DataDescription** string element.
	
	All error-related elements have the same type :ref:`DataListType` (list of values of type **xs:double**). 
	All missing error values should be reported as **-1**.
	

.. _LinearSequenceType:

LinearSequenceType
+++++++++++++++++++++
	
	Allows to describe a linear sequence of data, in form of:
	:math:`a_0, a_0+a_1, a_0+2a_1, ..., a_0 + (n-1)\cdot a_1`
	
	.. image:: images/types/LinearSequenceType.png
	
	An extension of :ref:`PrimaryType`, defines following attributes:
	
	*	Mandatory **a0** and **a1** attributes of type **xs:double**
	*	Optional integer **n** attribute to indicate the count of sequence elements
	*	Optional **units** attribute of :ref:`UnitsType` to define units of data
	
	
.. _VectorsType:

VectorsType
++++++++++++

	Defines a collection of vectors in 3D space, specifying source reference,
	dimensions units and vector reference frame.
	
	.. image:: images/types/VectorsType.png
	
	Both **VectorsType** and **Vector** are extending :ref:`PrimaryType`.
	
	**VectorsType** defines **units** attribute of type :ref:`UnitsType` and a collection of
	**Vector** elements.
	
	**Vector** has following attributes:
	
	*	string **ref** that is context-specific and defines the reference element to which
		the vector applies,
	*	three **xs:double** coordinate attributes: **x3**, **y3**, **z3**, 
		with units defined in the **Vectors** container.
	

.. _DataListType:

DataListType:
+++++++++++++++

	.. image:: images/types/DataListType.png

	Defines a space-separated list of double precision floating-point numbers, with
	the following optional attributes:

	*	**units** of type :ref:`UnitsType` to define units of the list
	*	integer **n** to indicate the number of elements in a list

.. _MatrixType:

MatrixType:
++++++++++++++

	.. image:: images/types/MatrixType.png
	
	A nrows x ncols matrix. 
	Being an extension of the :ref:`PrimaryType`, **MatrixType** defines following elements and attributes:
	
	*	mandatory **RowRefs** element that contains whitespace separated list of row names, 
	*	mandatory **ColRefs** element that contains the same list for columns. 
	*	mandatory **Matrix** element that contains a whitespace separated
		list of values, either real or complex
	*	mandatory integer attribute **nrows** defining the number of rows,
	*	mandatory integer attribute **ncols** defining the number of columns,
	*	mandatory attribute **form** that identifies the type of matrix. It can be
		- *arbitrary*
		- *symmetric*
		- *asymmetric*
		- *diagonal*
		- *antidiagonal*
		
	*	mandatory attribute 'values' that may take values
		-	*binary*
		-	*integer*
		-	*real*
		-	*imaginary*
		-	*complex*
	
	For an **arbitrary** matrix, **Matrix** element has nrows*ncols entries. First you output elements of the first row,
	starting from the leftmost column.
	
	+---+---+---+---+
	|   | c1| c2| c3|
	+---+---+---+---+
	| r1| 0 | 1 | 2 |
	+---+---+---+---+
	| r2| 3 | 4 | 5 |
	+---+---+---+---+
	| r3| 6 | 7 | 8 |
	+---+---+---+---+

	
	::

		<MatrixData units="arbitrary" nrows="3" ncols="3" form="arbitrary" values="integer">
			<RowRefs>r1 r2 r3</RowRefs>
			<ColRefs>c1 c2 c3</ColRefs>
			<Matrix>
				0 1 2 3 4 5 6 7 8
			</Matrix>
		</MatrixData>
	
	
	For **diagonal** and **antidiagonal** matrix there are nrows=ncols entries, counting from left to right
	
	+---+---+---+---+
	|   | c1| c2| c3|
	+---+---+---+---+
	| r1| 1 | 0 | 0 |
	+---+---+---+---+
	| r2| 0 | 2 | 0 |
	+---+---+---+---+
	| r3| 0 | 0 | 3 |
	+---+---+---+---+

	
	::
	
		<MatrixData units="arbitrary" nrows="3" ncols="3" form="diagonal" values="integer">
			<RowRefs>r1 r2 r3</RowRefs>
			<ColRefs>c1 c2 c3</ColRefs>
			<Matrix>
				1 2 3
			</Matrix>
		</MatrixData>

	+---+---+---+---+
	|   | c1| c2| c3|
	+---+---+---+---+
	| r1| 0 | 0 | 3 |
	+---+---+---+---+
	| r2| 0 | 2 | 0 |
	+---+---+---+---+
	| r3| 1 | 0 | 0 |
	+---+---+---+---+

	
	::
	
		<MatrixData units="arbitrary" nrows="3" ncols="3" form="antidiagonal" values="integer">
			<RowRefs>r1 r2 r3</RowRefs>
			<ColRefs>c1 c2 c3</ColRefs>
			<Matrix>
				1 2 3
			</Matrix>
		</MatrixData>


	For a **symmetric** matrix there are nrows(nrows+1)/2 entries.

	+---+---+---+---+
	|   | c1| c2| c3|
	+---+---+---+---+
	| r1| 1 | 2 | 3 |
	+---+---+---+---+
	| r2| 2 | 4 | 5 |
	+---+---+---+---+
	| r3| 3 | 5 | 6 |
	+---+---+---+---+

	
	::

		<MatrixData units="arbitrary" nrows="3" ncols="3" form="symmetric" values="integer">
			<RowRefs>r1 r2 r3</RowRefs>
			<ColRefs>c1 c2 c3</ColRefs>
			<Matrix>
				1 2 3 4 5 6
			</Matrix>
		</MatrixData>
	