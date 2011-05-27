.. _resAsOfDate:

AsOfDate
-------------------------------------------------------------------


Return data excluding any additions or improvements that were made after the given date (YYYY-MM-DD). This allows for reproducing an earlier query. Note that probably not all nodes support this.



**Type:** string

**Constraints:** 


.. _resAtomInchi:

AtomInchi
-------------------------------------------------------------------






**Type:** string

**Constraints:** 


.. _resAtomInchiKey:

AtomInchiKey
-------------------------------------------------------------------






**Type:** string

**Constraints:** 


.. _resAtomIonCharge:

AtomIonCharge
-------------------------------------------------------------------


Ionization stage with 0 for neutral



**Type:** integer number

**Constraints:** >=0


.. _resAtomMass:

AtomMass
-------------------------------------------------------------------


Atomic mass in Daltons, which is the same as the unified mass units (1Da = 1u = 1.660 538 86 (28) e-27)

**Units:** u

**Type:** floating-point number

**Constraints:** >1


.. _resAtomMassNumber:

AtomMassNumber
-------------------------------------------------------------------




**Units:** u

**Type:** integer number

**Constraints:** 


.. _resAtomNuclearCharge:

AtomNuclearCharge
-------------------------------------------------------------------


Atomic number or nuclear charge



**Type:** integer number

**Constraints:** >0


.. _resAtomNuclearSpin:

AtomNuclearSpin
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resAtomStateCoupling:

AtomStateCoupling
-------------------------------------------------------------------






**Type:** string

**Constraints:** 


.. _resAtomStateEnergy:

AtomStateEnergy
-------------------------------------------------------------------


Energy of the level



**Type:** floating-point number

**Constraints:** >=0


.. _resAtomStateHyperfineMomentum:

AtomStateHyperfineMomentum
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resAtomStateID:

AtomStateID
-------------------------------------------------------------------


ID for an atomic state, e.g. for linking a process to the state



**Type:** string

**Constraints:** 


.. _resAtomStateIonizationEnergy:

AtomStateIonizationEnergy
-------------------------------------------------------------------


Ionization energy in eV



**Type:** floating-point number

**Constraints:** >0


.. _resAtomStateKappa:

AtomStateKappa
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resAtomStateLandeFactor:

AtomStateLandeFactor
-------------------------------------------------------------------


Lande factor



**Type:** floating-point number

**Constraints:** 


.. _resAtomStateLifeTime:

AtomStateLifeTime
-------------------------------------------------------------------


Life time of an atomic state in s.

**Units:** s

**Type:** floating-point number

**Constraints:** >0


.. _resAtomStateMagneticQuantumNumber:

AtomStateMagneticQuantumNumber
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resAtomStateMixingCoefficient:

AtomStateMixingCoefficient
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resAtomStateParity:

AtomStateParity
-------------------------------------------------------------------






**Type:** string

**Constraints:** 


.. _resAtomStatePolarizability:

AtomStatePolarizability
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resAtomStateQuantumDefect:

AtomStateQuantumDefect
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resAtomStateStatisticalWeight:

AtomStateStatisticalWeight
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resAtomSymbol:

AtomSymbol
-------------------------------------------------------------------


Atomic name



**Type:** string

**Constraints:** 


.. _resCollisionIAEACode:

CollisionIAEACode
-------------------------------------------------------------------






**Type:** string

**Constraints:** 


.. _resCollisionThreshold:

CollisionThreshold
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resEnvironmentSpeciesConcentration:

EnvironmentSpeciesConcentration
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resEnvironmentSpeciesMoleFraction:

EnvironmentSpeciesMoleFraction
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resEnvironmentSpeciesPartialPressure:

EnvironmentSpeciesPartialPressure
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resEnvironmentTemperature:

EnvironmentTemperature
-------------------------------------------------------------------


Environment temperature

**Units:** K

**Type:** floating-point number

**Constraints:** >0


.. _resEnvironmentTotalNumberDensity:

EnvironmentTotalNumberDensity
-------------------------------------------------------------------




**Units:** 1/cm3

**Type:** floating-point number

**Constraints:** 


.. _resEnvironmentTotalPressure:

EnvironmentTotalPressure
-------------------------------------------------------------------


Environment total pressure

**Units:** bar

**Type:** floating-point number

**Constraints:** >0


.. _resFunctionID:

FunctionID
-------------------------------------------------------------------






**Type:** string

**Constraints:** 


.. _resFunctionName:

FunctionName
-------------------------------------------------------------------






**Type:** string

**Constraints:** 


.. _resInchiKey:

InchiKey
-------------------------------------------------------------------


International Chemical Identifier (InChI) key (27-character or 14-character first part)



**Type:** string

**Constraints:** 


.. _resMoleculeChemicalName:

MoleculeChemicalName
-------------------------------------------------------------------


Conventional molecule name, e.g. CO2, NH3, Feh (may not be unique)



**Type:** string

**Constraints:** 


.. _resMoleculeInchi:

MoleculeInchi
-------------------------------------------------------------------






**Type:** string

**Constraints:** 


.. _resMoleculeInchiKey:

MoleculeInchiKey
-------------------------------------------------------------------






**Type:** string

**Constraints:** 


.. _resMoleculeMolecularWeight:

MoleculeMolecularWeight
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resMoleculeNormalModeHarmonicFrequency:

MoleculeNormalModeHarmonicFrequency
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resMoleculeNormalModeIntensity:

MoleculeNormalModeIntensity
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resMoleculeStateCharacLifeTime:

MoleculeStateCharacLifeTime
-------------------------------------------------------------------


Molecular state lifetime in seconds

**Units:** s

**Type:** floating-point number

**Constraints:** >0


.. _resMoleculeStateCharacNuclearSpinSymmetry:

MoleculeStateCharacNuclearSpinSymmetry
-------------------------------------------------------------------






**Type:** string

**Constraints:** (ortho|para|A|E|none)


.. _resMoleculeStateEnergy:

MoleculeStateEnergy
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resMoleculeStateID:

MoleculeStateID
-------------------------------------------------------------------






**Type:** string

**Constraints:** 


.. _resMoleculeStoichiometricFormula:

MoleculeStoichiometricFormula
-------------------------------------------------------------------


Molecular stoichiometric formula



**Type:** string

**Constraints:** 


.. _resNonRadTranEnergy:

NonRadTranEnergy
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resNonRadTranProbability:

NonRadTranProbability
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resNonRadTranWidth:

NonRadTranWidth
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resNormalModeSymmetry:

NormalModeSymmetry
-------------------------------------------------------------------


The character of the irreducible representation for this vibrational normal mode in the molecular point group



**Type:** string

**Constraints:** 


.. _resRadTransBandCentre:

RadTransBandCentre
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resRadTransBandWidth:

RadTransBandWidth
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resRadTransEffectiveLandeFactor:

RadTransEffectiveLandeFactor
-------------------------------------------------------------------


Effective Lande factor for a given transition



**Type:** floating-point number

**Constraints:** 


.. _resRadTransEnergy:

RadTransEnergy
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resRadTransFrequency:

RadTransFrequency
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resRadTransProbabilityA:

RadTransProbabilityA
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resRadTransProbabilityIdealisedIntensity:

RadTransProbabilityIdealisedIntensity
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resRadTransProbabilityLineStrength:

RadTransProbabilityLineStrength
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resRadTransProbabilityLog10WeightedOscillatorStrength:

RadTransProbabilityLog10WeightedOscillatorStrength
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resRadTransProbabilityOscillatorStrength:

RadTransProbabilityOscillatorStrength
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resRadTransProbabilityWeightedOscillatorStrength:

RadTransProbabilityWeightedOscillatorStrength
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resRadTransWavelength:

RadTransWavelength
-------------------------------------------------------------------




**Units:** A

**Type:** floating-point number

**Constraints:** 


.. _resRadTransWavenumber:

RadTransWavenumber
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 


.. _resSourceCategory:

SourceCategory
-------------------------------------------------------------------


Type of publication, e.g. journal, book etc.



**Type:** string

**Constraints:** Journal | Book | Proceedings | On-line


.. _resSourceYear:

SourceYear
-------------------------------------------------------------------


Publication Year



**Type:** integer number

**Constraints:** >0

