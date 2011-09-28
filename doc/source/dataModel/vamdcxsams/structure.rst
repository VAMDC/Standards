XSAMS structure
=========================================

Atomic, Molecular, Particle and Surface Interaction Data XML Schema Structure
------------------------------------------------------------------------------

	The XSAMS schema provides a framework for a structured presentation of AMPSI
	data in an XML file. It is based on the physical representation of interaction
	between various objects through description of the physical states and
	interaction characteristics. Therefore, XSAMS provides rules for presentation
	of

	-	states of atoms, molecules, solids (surfaces) and some elementary particles, 
	
	-	characteristics of interaction between physical objects,
	
	-	sources of the data.

.. _xsamsdata:

XSAMSData
-----------------------

	.. image:: images/XSAMSData.png
		:alt:	XSAMSData root element

	An :ref:`xsamsdata` element is defined by the type **XSAMSDataType** which in turn
	may consist of following optional elements:

	-	:ref:`Environments` of type **EnvironmentsType** that keeps data relevant to description of processes environments,

	-	:ref:`Species` of type **SpeciesType** which may include sub-elements 
		:ref:`Atoms`, :ref:`Molecules`, :ref:`Particles`, :ref:`Solids`.

	-	**Processes** of type **ProcessesType** for state-to-state transitions and interaction processes data,
		with :ref:`Radiative`, :ref:`NonRadiative`, :ref:`Collisions` optional elements.

	-	:ref:`Sources` of type **SourcesType** for data origin description,

	-	:ref:`Methods` of type **MethodsType** that may contain descriptions of data production methods.

	-	:ref:`Functions` of type **FunctionsType** to keep information on functions used in different parts of schema

	-	**Comments** for arbitrary description of an XSAMS document.


Example XML instance follows. It has empty **Processes** and **States** branches, but is still a valid XSAMS document instance.

Contrary to IAEA version of XSAMS, VAMDC-XSAMS has a namespace URL defined, **http://vamdc.org/xml/xsams/0.2**



::

	<?xml version="1.0" encoding="UTF-8"?>
	<XSAMSData xmlns="http://vamdc.org/xml/xsams/0.2"
		xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
		xsi:schemaLocation="http://vamdc.org/xml/xsams/0.2 xsams.xsd">
		<Species></Species>
		<Processes></Processes>
		<Sources>
			<Source sourceID="BSRC1">
				<Category>journal</Category>
				<SourceName>JnlName</SourceName>
				<Year>2011</Year>
				<Authors>
					<Author>
						<Name>Smith J.</Name>
					</Author>
				</Authors>
			</Source>
		</Sources>
		<Methods>
			<Method methodID="MEX1">
				<Category>experiment</Category>
				<Description>High-precision measurements</Description>
			</Method>
		</Methods>
	</XSAMSData>
	
