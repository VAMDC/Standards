.. _Changelog:

Changelog
================

This section describes the changes between VAMDC-XSAMS versions.
For a complete changelog, describing the difference between IAEA XSAMS and VAMDC XSAMS, refer to 
a separate Changelog document _[VAMDC-XSAMS-LOG]


Changes between VAMDC-XSAMS version 0.2 and 0.3
--------------------------------------------------

	#.	Fixed spelling error in :ref:`Sources` category, **theses** -> **thesis**
	
	#.	Change Namespace URL from "http://vamdc.org/xml/xsams/0.2" to "http://vamdc.org/xml/xsams/0.3"
	
	#.	Update Case-By-Case definition of molecular quantum numbers to version 0.3
	
	#.	Rename CategoryType into SourceCategoryType in :ref:`Sources`
	
	#.	Allow up to three **LifeTime** elements within :ref:`AtomicNumericalData`
	
	#.	Allow more than one IAEA code per :ref:`Collision`
	
	#.	Added few more :ref:`particles`: neutron, alpha and cosmic. 
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
		
	#.	Changed :ref:`RadiativeTransition` and :ref:`NonRadiativeTransition` to have 'UpperStateRef' and 'LowerStateRef'
		elements, plus optional 'process' attribute with 'excitation'/'deexcitation' values
	
	#.	In :ref:`DataListType` rename **n** attribute into **count**
	
	#.	In :ref:`LinearSequenceType` rename **n** , **a0** , **a1** attributes into **count** , **initial** , **increment**