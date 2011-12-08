.. _Changelog:

Changelog
================

This section describes the changes between VAMDC-XSAMS versions.
For a complete changelog, describing the difference between IAEA XSAMS and VAMDC XSAMS, refer to 
a separate Changelog document _[VAMDC-XSAMS-LOG]


Changes between VAMDC-XSAMS version 0.2 and 0.3
--------------------------------------------------

	#.	Fixed spelling error in :ref:`Sources` category, **theses** -> **thesis**
	
	#.	**cm5** and **Torr** are added to the :ref:`UnitsType`
	
	#.	Changed Namespace URL from "http://vamdc.org/xml/xsams/0.2" to "http://vamdc.org/xml/xsams/0.3"
	
	#.	Updated Case-By-Case definition of molecular quantum numbers to version 0.3
	
	#.	Renamed CategoryType into SourceCategoryType in :ref:`Sources`
	
	#.	Allowed up to three **LifeTime** elements within :ref:`AtomicNumericalData`
	
	#.	Allowed more than one IAEA code per :ref:`Collision`
	
	#.	Addeded few more :ref:`particles`: neutron, alpha and cosmic. 
		Latter is 'any high-energy cosmic ray particle'.
	
	#.	Replaced StateID with SpeciesID in :ref:`Particles` and :ref:`Solids`
	
	#.	Added mandatory **id** attribute to all :ref:`processes`
	
	#.	Added optional **groupLabel** attribute to all :ref:`processes`
	
	#.	**envID** attribute is now required for the :ref:`Environment` element
	
	#.	Fixed :ref:`MatrixType` to use correct types for **values** attribute and **Matrix** element
	
	#.	Changed few of the :ref:`XSAMSProcessCodes` abbreviations
	
	#.	Changed CrossSection to :ref:`AbsorptionCrossSection` in RadiativeType

	#.	Introduced :ref:`CollisionInducedAbsorptionCrossSection` for Hitran
	
	#.	Merged table formats from :ref:`AbsorptionCrossSection` and :ref:`Collisions`, 
		the base type is the :ref:`SimpleDataTableType`
	
	#.	Change the SourceName element to be optional in Sources: sources such as 'private communications' 
		do not necessarily have meaningful SourceNames
		
	#.	Changed :ref:`RadiativeTransition` and :ref:`NonRadiativeTransition` to have 'UpperStateRef' 
		and 'LowerStateRef' elements, plus optional 'process' attribute 
		with 'excitation'/'deexcitation' values
	
	#.	In :ref:`DataListType` renamed **n** attribute into **count**
	
	#.	In :ref:`LinearSequenceType` renamed **n** , **a0** , **a1** attributes 
		into **count** , **initial** , **increment**
		
	#.	Simplified **Accuracy** description and introduced **Evaluation** description for :ref:`DataType`, 
		:ref:`DataFuncType` and :ref:`DataSeriesType`
	
	#.	Abandoned **SymbolType**, **CNPIGroup** of the :ref:`MolecularChemicalSpecies` is now a string 
		containing the latex description of the CNPI group symbol
		
	#.	Introduced ArticleNumber element into :ref:`Source` element, added "vamdc node" option for **Category**
	
	#.	Renamed **Multipole** element of :ref:`RadiativeTransition` **Probability** into **TransitionKind**. Added *P* value for 
		transitions due to polarizability, not multipole. For example, Raman transitions.