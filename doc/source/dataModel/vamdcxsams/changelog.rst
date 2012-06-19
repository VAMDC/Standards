.. _Changelog:

Changelog
================

This section describes the changes between VAMDC-XSAMS versions.
For a complete changelog, describing the difference between IAEA XSAMS and VAMDC XSAMS, refer to 
a separate Changelog document _[VAMDC-XSAMS-LOG]

Changes between VAMDC-XSAMS 0.3 and 1.0

        #.      Added extra :ref:`XSAMSProcessCodes` suggested by MLD
        
        #.      Move process codes to typesAttributes.xsd
        
        #.      Added ProcessClass element to :ref:`radiative` transitions
        
        #.      :ref:`BasisStates` are now given once at the root of the Molecule element and referenced in StateExpansion, 
                which gives the coefficients only.
       
        #.      :ref:`BasisStates` have their own stateIDs, starting from **SB**
        
        #.      Added evaluation to :ref:`DataSet` children, remove extension of :ref:`PrimaryType`

        #.      removed **PhysicalUncertainity** from :ref:`fitdat`a and tabulateddata`
        
	#.	fixed bug in J for open-shell cases lpos and ltos, which should be ctypes:AMType
	
	#.      change DataDescription element name into **Description** in :ref:`dataSeriesType`
	
	#.	:ref:`Particle` name attribute is now mandatory
	
	#.	Implemented vacuum flag, environment reference, 
	        airtovacuum conversion factor for transition **Wavelength** element in :ref:`EnergyWavelength`
	
	#.	Added BranchingRatio element to :ref:`collision`
	
	#.	Use stateRef for energyOrigin attribute of StateEnergy in :ref:`MolecularStateCharacterisation`
	

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
		
	#.	:ref:`ElementSymbolType` now contains an enumeration of all possible atomic element symbols from the [IUPAC]_ list.
		Updated the :ref:`AtomsList` with the element 112.