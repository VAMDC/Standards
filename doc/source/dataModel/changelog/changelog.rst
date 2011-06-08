.. _changelog:

Introduction 
=====================================

This document outlines the modifications made to the International Atomic
Energy Agency's XML Schema for Atomic, Molecular and Solid Data ( XSAMS)
version 0.1.1 for use by the VAMDC.  The modified schema is the working
data model for the VAMDC consortium.  The adopted name for the modified
schema is XSAMS-VAMDC.  

XSAMS version 0.1.1: http://www-amdis.iaea.org/xsams/docu/xsams-0.1.1.pdf

XSAMS-VAMDC version 0.2 xsd: http://www.vamdc.org/downloads/vamdc-xsams-v0.2.tar.bz2


Changes versus official schema v.0.1.1
-----------------------------------------------

#.	**MolecularState** structure has been replaced with case-by-case representation, initially proposed by C.Hill.
	
	The case-by-case XML description of molecular states within XSAMS	
	is designed to provide a straightforward and flat data structure for representing 
	the quantum numbers and symmetries that denote a molecular state.
	For full documentation on cases see http://www.vamdc.org/documents/cbc_v0.2.pdf.
	
	
	Each **MolecularState** has Case element of type **cases:BaseCase** from separate namespace.
	
	.. image:: updates_aftercambridge/molecular_stateexpansion.png
		:alt: case link to the main schema
		
	**BaseCase** type defines the single attribute, *caseID*, that denotes the case used.
		
	.. image:: updates_aftercambridge/caseExample.png
		:alt: case definition example
		
	Each specific case, in turn, extends that **BaseCase** type, defining specific *caseID* attribute value
	and adding **QNs** element that contains a sequence of quantum numbers and symmetries.
	

Changes introduced before Cambridge meeting
---------------------------------------------------------------------

As things are defined in the current version of schema.

For real changelog see SVN logs and diffs.

Most of the things contributed by Christian Hill.

#.	**States** element renamed into **Species**

#.	**SourceRef**'s in PrimaryType are now elements of type IDREF, not attribute of type IDREFS

#.	**AtomicNumericalData**:
	new elements: **HyperfineConstantA** and **HyperfineConstantB**, describing hyperfine structure 
	caused by interaction with magnetic dipole and electric quadrupole nuclear moments.	

#.	Environments:
	added schema part for line shifting/broadening environment.
	For more details see :ref:`environments`.
	
#.	Broadening:
	added schema part for :ref:`broadening`.
	
#.	Shiftings:
	added schema part for :ref:`shifting`.
	
#.	Cross-sections
	added schema part for :ref:`crossection`.
	
#.	NuclearSpinSymmetry in MolecularStateCharacterisation is now NuclearSpinIsomer.
	Expected values are "ortho", "para", "meta","A","E"
	
#.	Added more units::

		atm
		1/m3
		1/cm3
	
#.	Renamed **IonStateType** into **AtomicIonType**
	Renamed IonState element into Ion in Atoms.

#.	Added **speciesID** attribute to MoleculeType (Molecule element).

	Added **speciesID** attribute to AtomicIonType in atoms (Atom/Isotope/Ion element).
	
	In collisions, added optional element **speciesRef** to **Reactants** and **Products**.
	
	In radiative and nonradiative transitions added optional **speciesRef** element.
	
#.	Added **InChI** and **InChIKey** elements to atomic ions.
	
#.	**InChIKey** is mandatory both for molecules and atomic ions,
	since it is used for species identification within VAMDC.
	
#.	Removed **Comments** element from **Methods**, since **Comment** element is inherited from **PrimaryType**.

#.	**ParticleType** is now extending **PrimaryType**.

#.	**AtomicState** and **MoleculeState** are now optional elements.
		Since we do have **speciesID**/**speciesRef**, 
		it is not always necessary to define exact state of molecule/atom to refer to it.

#.	CML **atomArray** and **bondArray** elements within **MoleculeStructure** element added to describe molecule structure.
	They replace **AtomNType**, **BondsType**, **AtomsType** and **MoleculeNuclearSpins** elements and types.
	
#.	New vector and matrix data types

	
#.	Introduced schema-wide namespace, with URL.
	
	All attributes are defined by type now, not by reference.
	
#.	Removed **WavelengthWavenumberType** in Processes/Radiative/EnergyWavelengthType. 
	All elements within EnergyWavelengthType are now of type DataType and may occur more than once.
	Type should be determined by methodref: experiment, theory, ritz
	
#.	Added element EffectiveLandeFactor of type DataType to RadiativeTransitionProbabilityType.

#.	Added PartitionFunction to MolecularChemicalSpecies element.
	
	.. image:: molecular/PartitionFunction.png
		:alt: PartitionFunction Element
	
#.	Added some test examples (broadening test, azulene information test).
	

Changes introduced after Cambridge meeting (after 31.03.2011)
------------------------------------------------------------------------------------


#.	Organization of ID/IDREF pairs, all IDREF types are now defined and documented in typesAttributes.xsd

#.	Two more units::

		1/cm2/atm
		1/cm/atm
	
	* Suggestion by Aya Awa Ba
	
#.	Cases are properly linked to the main schema now.
	Main schema has **Case** element of type commonTypes:**BaseCase**, each case extends it.
	
#.	State expansion is redone as linear combination of Case elements inside BasisState elements

#.	In functions, parameter and argument names are attributes now, not elements.

#.	**StateRef** type is now called **StateRefType** for consistency

#.	Removed *PrimaryType* extension from **MoleculesType**, **AtomsType** and **SolidsType**. 
	Now they are just the containters for respective **Molecule**, **Atom** and **Solid** elements.
	Removed *PrimaryType* extension from **RadiativeType**, **NonRadiativeType**, **CollisionsType**.
	The intention is to prevent mixing and confusion **SourceRef**'s in case of merged documents.
	
	
#.	Removed unused types in statesMolecules that were overridden by CML description of molecular structure.

#.	**Probability** in **NonRadiativeTransition** is optional now

	* suggestion by Peter Loboda

#.	State lifetime in atoms and molecules now has attribute "decay" 
	that may take values in (total, totalRadiative, totalNonRadiative).
	It can be specified no more than three times, once for each state decay mechanism.
	
	* suggestion by Peter Loboda
	
	.. image:: updates_aftercambridge/state_atoms_lifetime_decay.png
		:alt: state decay mechanism attribute in lifetime
	
	
	
#.	Radiative transition has now satellite line properties element
	
	* suggestion by Peter Loboda

	.. image:: updates_aftercambridge/radiative_SatelliteLine.png
		:alt: radiative transition satellite line properties

#.	Added several test XML files to illustrate changes, moved examples into tests/valid

#.	Introduced draft :ref:`accuracy` description for **DataType**

#.	Changes in Collisions:
	
	In **CollisionalTransition.DataSets.DataSet.FitData**
	remove redundant **FunctionRef** and **FitValidityLimits** elements,
	cause they are now kept inside the FitParameters element.
	
	In **CollisionalTransition** rename 
	
	*	**Reactants** into **Reactant**,
	*	**Products** into **Product**,
	*	**IntermediateStates** into **IntermediateState**,
	
	all of them now may appear more then once and are of type **SpeciesStateRefType**,
	which has two child elements: **SpeciesRef** and **StateRef**.
	At least one of them must be specified, both also may be specified.
	It would be kind to always specify **SpeciesRef**.
	
	.. image:: updates_aftercambridge/CollisionalTransition.png