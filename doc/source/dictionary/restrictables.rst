.. _restrictables:

Restrictables keywords
==========================

The following keywords may be used as **restrictables** in TAP-VAMDC queries using VSS1 language,
also they are added to registry for each new node.

Note that each node supports only a small subset of the keywords. The list of supported keywords may be
retrieved through **VOSI Capabilities** service endpoint. See the TAP-VAMDC documentation for further details.

.. _AsOfDate:

AsOfDate
-------------------------------------------------------------------


Return data excluding any additions or improvements that were made after the given date (YYYY-MM-DD). This allows for reproducing an earlier query. Note that probably not all nodes support this.

**Units:** 

**Type:** string

**Constraints:** 


.. _AtomInchi:

AtomInchi
-------------------------------------------------------------------




**Units:** 

**Type:** string

**Constraints:** 


.. _AtomInchiKey:

AtomInchiKey
-------------------------------------------------------------------




**Units:** 

**Type:** string

**Constraints:** 


.. _AtomIonCharge:

AtomIonCharge
-------------------------------------------------------------------


Ionization stage with 0 for neutral

**Units:** 

**Type:** integer number

**Constraints:** >=0


.. _AtomMass:

AtomMass
-------------------------------------------------------------------


Atomic mass in Daltons, which is the same as the unified mass units (1Da = 1u = 1.660 538 86 (28) e-27)

**Units:** u

**Type:** floating-point number

**Constraints:** >1


.. _AtomMassNumber:

AtomMassNumber
-------------------------------------------------------------------




**Units:** u

**Type:** integer number

**Constraints:** 


.. _AtomNuclearCharge:

AtomNuclearCharge
-------------------------------------------------------------------


Atomic number or nuclear charge

**Units:** 

**Type:** integer number

**Constraints:** >0


.. _AtomNuclearSpin:

AtomNuclearSpin
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _AtomStateCoupling:

AtomStateCoupling
-------------------------------------------------------------------




**Units:** 

**Type:** string

**Constraints:** 


.. _AtomStateEnergy:

AtomStateEnergy
-------------------------------------------------------------------


Energy of the level

**Units:** 

**Type:** floating-point number

**Constraints:** >=0


.. _AtomStateHyperfineMomentum:

AtomStateHyperfineMomentum
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _AtomStateID:

AtomStateID
-------------------------------------------------------------------


ID for an atomic state, e.g. for linking a process to the state

**Units:** 

**Type:** string

**Constraints:** 


.. _AtomStateIonizationEnergy:

AtomStateIonizationEnergy
-------------------------------------------------------------------


Ionization energy in eV

**Units:** 

**Type:** floating-point number

**Constraints:** >0


.. _AtomStateKappa:

AtomStateKappa
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _AtomStateLandeFactor:

AtomStateLandeFactor
-------------------------------------------------------------------


Lande factor

**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _AtomStateLifeTime:

AtomStateLifeTime
-------------------------------------------------------------------


Life time of an atomic state in s.

**Units:** s

**Type:** floating-point number

**Constraints:** >0


.. _AtomStateMagneticQuantumNumber:

AtomStateMagneticQuantumNumber
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _AtomStateMixingCoefficient:

AtomStateMixingCoefficient
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _AtomStateParity:

AtomStateParity
-------------------------------------------------------------------




**Units:** 

**Type:** string

**Constraints:** 


.. _AtomStatePolarizability:

AtomStatePolarizability
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _AtomStateQuantumDefect:

AtomStateQuantumDefect
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _AtomStateStatisticalWeight:

AtomStateStatisticalWeight
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _AtomSymbol:

AtomSymbol
-------------------------------------------------------------------


Atomic name

**Units:** 

**Type:** string

**Constraints:** 


.. _CollisionThreshold:

CollisionThreshold
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _EnvironmentSpeciesConcentration:

EnvironmentSpeciesConcentration
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _EnvironmentSpeciesMoleFraction:

EnvironmentSpeciesMoleFraction
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _EnvironmentSpeciesPartialPressure:

EnvironmentSpeciesPartialPressure
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _EnvironmentTemperature:

EnvironmentTemperature
-------------------------------------------------------------------


Environment temperature

**Units:** K

**Type:** floating-point number

**Constraints:** >0


.. _EnvironmentTotalNumberDensity:

EnvironmentTotalNumberDensity
-------------------------------------------------------------------




**Units:** 1/cm3

**Type:** floating-point number

**Constraints:** 


.. _EnvironmentTotalPressure:

EnvironmentTotalPressure
-------------------------------------------------------------------


Environment total pressure

**Units:** bar

**Type:** floating-point number

**Constraints:** >0


.. _FunctionID:

FunctionID
-------------------------------------------------------------------




**Units:** 

**Type:** string

**Constraints:** 


.. _FunctionName:

FunctionName
-------------------------------------------------------------------




**Units:** 

**Type:** string

**Constraints:** 


.. _InchiKey:

InchiKey
-------------------------------------------------------------------


International Chemical Identifier (InChI) key (27-character or 14-character first part)

**Units:** 

**Type:** string

**Constraints:** 


.. _MoleculeChemicalName:

MoleculeChemicalName
-------------------------------------------------------------------


Conventional molecule name, e.g. CO2, NH3, Feh (may not be unique)

**Units:** 

**Type:** string

**Constraints:** 


.. _MoleculeInchi:

MoleculeInchi
-------------------------------------------------------------------




**Units:** 

**Type:** string

**Constraints:** 


.. _MoleculeInchiKey:

MoleculeInchiKey
-------------------------------------------------------------------




**Units:** 

**Type:** string

**Constraints:** 


.. _MoleculeMolecularWeight:

MoleculeMolecularWeight
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _MoleculeNormalModeHarmonicFrequency:

MoleculeNormalModeHarmonicFrequency
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _MoleculeNormalModeIntensity:

MoleculeNormalModeIntensity
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _MoleculeStateCharacLifeTime:

MoleculeStateCharacLifeTime
-------------------------------------------------------------------


Molecular state lifetime in seconds

**Units:** s

**Type:** floating-point number

**Constraints:** >0


.. _MoleculeStateCharacNuclearSpinSymmetry:

MoleculeStateCharacNuclearSpinSymmetry
-------------------------------------------------------------------




**Units:** 

**Type:** string

**Constraints:** (ortho|para|A|E|none)


.. _MoleculeStateEnergy:

MoleculeStateEnergy
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _MoleculeStateID:

MoleculeStateID
-------------------------------------------------------------------




**Units:** 

**Type:** string

**Constraints:** 


.. _MoleculeStoichiometricFormula:

MoleculeStoichiometricFormula
-------------------------------------------------------------------


Molecular stoichiometric formula

**Units:** 

**Type:** string

**Constraints:** 


.. _NonRadTranEnergy:

NonRadTranEnergy
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _NonRadTranProbability:

NonRadTranProbability
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _NonRadTranWidth:

NonRadTranWidth
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _NormalModeSymmetry:

NormalModeSymmetry
-------------------------------------------------------------------


The character of the irreducible representation for this vibrational normal mode in the molecular point group

**Units:** 

**Type:** string

**Constraints:** 


.. _RadTransBandCentre:

RadTransBandCentre
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _RadTransBandWidth:

RadTransBandWidth
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _RadTransEffectiveLandeFactor:

RadTransEffectiveLandeFactor
-------------------------------------------------------------------


Effective Lande factor for a given transition

**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _RadTransEnergy:

RadTransEnergy
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _RadTransFrequency:

RadTransFrequency
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _RadTransProbabilityA:

RadTransProbabilityA
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _RadTransProbabilityIdealisedIntensity:

RadTransProbabilityIdealisedIntensity
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _RadTransProbabilityLineStrength:

RadTransProbabilityLineStrength
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _RadTransProbabilityLog10WeightedOscillatorStrength:

RadTransProbabilityLog10WeightedOscillatorStrength
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _RadTransProbabilityOscillatorStrength:

RadTransProbabilityOscillatorStrength
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _RadTransProbabilityWeightedOscillatorStrength:

RadTransProbabilityWeightedOscillatorStrength
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _RadTransWavelength:

RadTransWavelength
-------------------------------------------------------------------




**Units:** A

**Type:** floating-point number

**Constraints:** 


.. _RadTransWavenumber:

RadTransWavenumber
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

**Constraints:** 


.. _SourceCategory:

SourceCategory
-------------------------------------------------------------------


Type of publication, e.g. journal, book etc.

**Units:** 

**Type:** string

**Constraints:** Journal | Book | Proceedings | On-line


.. _SourceYear:

SourceYear
-------------------------------------------------------------------


Publication Year

**Units:** 

**Type:** integer number

**Constraints:** >0

