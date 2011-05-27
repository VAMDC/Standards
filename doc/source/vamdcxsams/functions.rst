.. _Functions:

Functions
============

	**Functions** branch of the schema provides the list and description of different
	functions used for data presentation.  These functions can be fit functions to calculate numerical data
	or functions to describe specific methods.  The **Functions** element is defined by type
	**FunctionsType** and contains one or more **Function** elements.

	.. image:: images/functions/Functions.png


.. _Function:

Function
-----------

	Element **Function** of type **FunctionType** provides 
	description of a function in terms of its value **y**, arguments :math:`x_1,x_2...`, 
	and additional parameters. Each function is identified by a **functionID**, 
	that may be referred from :ref:`methods`, :ref:`FitData`'s **FunctionParameters** elements, 
	:ref:`Broadening`'s **Lineshape**.
	**FunctionType** is an extension of :ref:`PrimaryType`.

	It is important to note that a fit function can be viewed just as a
	mathematical expression or as the representation of physical process.  This
	second approach has been priviledged in XSAMS.  Therefore, physical
	parameters, such as units or the reference frame for the energies are
	described in this section.  Numerical data for the argument validity limits
	and the fit parameters are provided as fit data within the :ref:`FitParametersType`, 
	wherever it is used in the schema.

	.. image:: images/functions/Function.png
	
	Function element, extending :ref:`PrimaryType`, has the following elements and attributes:
	
	*	mandatory **functionID** attribute of type :ref:`FunctionIDType`, that is the function
		identification to which any numerical data or method can refer.  This
		attribute is mandatory, it may contain any alphanumeric characters and the first character 
		of the identifier should be **F**

	*	optional string **Name** element, which gives the name of the function;
	*	mandatory **Expression** element, defined as a string with an additional 
		attribute **computerLanguage**, providing the expression used to calculate the function value;
	*	mandatory **Y** element of type :ref:`ArgumentType`, that describes the value of the function,
		providing its units and type;
	*	mandatory **Arguments** element, defining the list of **Argument** elements, each of :ref:`ArgumentType`,
		defining the function arguments, their units, types and the default validity limits;
	*	optional element **Parameters**, defining the list of :ref:`Parameter` elements, describing function parameters:
		their units and names;
	*	optinal element **ReferenceFrame**, with possible values
	
		-	CenterOfMass
		-	LaboratoryFrame
		-	TargetFrame
		
		that is used when function is used in :ref:`FitData` within :ref:`Collisions`;
	
	*	optional string **Description** element, giving a description of the function;
	*	optional string **SourceCodeURL**, giving a location from where the function source code
		can be downloaded.

.. _ArgumentType:

ArgumentType
--------------

	**ArgumentType** is used in :ref:`Function` in **Y** and **Arguments** elements 
	and in :ref:`FitParametersType` in **Arguments**.
	
	.. image:: images/functions/ArgumentType.png
	
	Following attributes and elements are defined by ArgumentType:
	
	*	mandatory string **name** attribute, defining the function argument name.
		Must be the same as defined in the :ref:`Function`'s element **Expression**.
	*	mandatory **units** attribute, of type :ref:`UnitsType`, defining the units of the argument,
	*	optional string **Description** attribute, providing the free-form description of the argument,
	*	optional **LowerLimit** element of type **xs:double**, 
 	*	optional **UpperLimit** element of type **xs:double**.
 	
 	When **ArgumentType** is used within :ref:`Function`, **LowerLimit** and **UpperLimit** 
 	of the argument become the default range values. 
 	If required, they may be overridden later by **FitArgument** elements within :ref:`FitParametersType`.
 	Attribute **units** should be ignored or checked for consistency when handling 
 	**FitArgument** from :ref:`FitParametersType`.

.. _Parameter:

Parameter
------------

	The **Parameter** element, defined by **ParameterType**, provides the information about the function parameter.

	.. image:: images/functions/Parameter.png

	Listed within **Parameters** element of :ref:`Function`, it defines following attributes and elements:
	
	*	mandatory string **name** attribute, that should match the one defined in the :ref:`Function`'s **Expression**,
	*	mandatory **units** attribute, of type :ref:`UnitsType`,
	*	optional string **Description** providing the free-form description of the parameter
	
	
Examples
----------
	
	Here is an example function branch instance, defining the function :math:`k(T)=a*{t/300}^b * e^{-g/t}`, 
	with temperature argument **T** and three parameters, **a**, **b**, **g**::
		
		<Functions>
			<Function functionID="FKIDAKOOJI">
				<Comments>Kooij function</Comments>
				<SourceRef>BKIDAS1</SourceRef>
				<Name>Kooij</Name>
				<Expression computerLanguage="Fortran">
					a * (T/300.) ** b * EXP(-g/T)
				</Expression>
				<Y name="k" units="cm3/s">
					<Description>Rate coefficient vs temperature</Description>
				</Y>
				<Arguments>
					<Argument name="T" units="K">
						<Description>Temperature</Description>
						<LowerLimit>20</LowerLimit>
						<UpperLimit>200</UpperLimit>
					</Argument>
				</Arguments>
				<Parameters>
					<Parameter name="a" units="cm3/s">
						<Description>alpha multiplier</Description>
					</Parameter>
					<Parameter name="b" units="unitless">
						<Description>beta power</Description>
					</Parameter>
					<Parameter name="g" units="K">
						<Description>gamma exponent</Description>
					</Parameter>
				</Parameters>
				<Description></Description>
				<SourceCodeURL></SourceCodeURL>
			</Function>
		</Functions>
	