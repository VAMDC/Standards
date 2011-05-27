.. _returnables:

Returnables keywords
==========================

The following keywords are used as **returnables** in Django implementation of TAP-VAMDC node software.
**Returnables** is an internal concept of the Django implementation, defining the names of the
placeholders in the schema,where data producer may put his data.
Some of the keywords suppose additional suffixes that allows them to be expanded into **DataType** xsams object.
For further information see the Django TAP-VAMDC documentation.

Another use case of returnables is the possibilty to determine if it make sense to look for a certain piece of data
in the output documents of the node. But even if the node declares that it has that kind of data in it's output,
there is no guarantee that it will be present in a response for a particular query.



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

Has **DataType** suffixes support


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


.. _AtomSpeciesID:

AtomSpeciesID
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _AtomStateCompositionComments:

AtomStateCompositionComments
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _AtomStateConfigurationLabel:

AtomStateConfigurationLabel
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _AtomStateCoupling:

AtomStateCoupling
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _AtomStateDescription:

AtomStateDescription
-------------------------------------------------------------------


Good luck

**Units:** 

**Type:** string


**Constraints:** 


.. _AtomStateEnergy:

AtomStateEnergy
-------------------------------------------------------------------


Energy of the level

**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** >=0


.. _AtomStateHyperfineConstantA:

AtomStateHyperfineConstantA
-------------------------------------------------------------------


Hyperfine splitting due to magnetic dipole interaction

**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _AtomStateHyperfineConstantB:

AtomStateHyperfineConstantB
-------------------------------------------------------------------


Hyperfine splitting due to electric quadrupole interaction

**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


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

Has **DataType** suffixes support


**Constraints:** >0


.. _AtomStateJ1:

AtomStateJ1
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _AtomStateJ2:

AtomStateJ2
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _AtomStateK:

AtomStateK
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _AtomStateKappa:

AtomStateKappa
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number


**Constraints:** 


.. _AtomStateL:

AtomStateL
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _AtomStateLandeFactor:

AtomStateLandeFactor
-------------------------------------------------------------------


Lande factor

**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _AtomStateLifeTime:

AtomStateLifeTime
-------------------------------------------------------------------


Life time of an atomic state in s.

**Units:** s

**Type:** floating-point number

Has **DataType** suffixes support


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

Has **DataType** suffixes support


**Constraints:** 


.. _AtomStateQuantumDefect:

AtomStateQuantumDefect
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _AtomStateRef:

AtomStateRef
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _AtomStateS:

AtomStateS
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _AtomStateS2:

AtomStateS2
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _AtomStateStatisticalWeight:

AtomStateStatisticalWeight
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number


**Constraints:** 


.. _AtomStateTotalAngMom:

AtomStateTotalAngMom
-------------------------------------------------------------------




**Units:** 

**Type:** string


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

Has **DataType** suffixes support


**Constraints:** 


.. _CrossSectionDescription:

CrossSectionDescription
-------------------------------------------------------------------


A string describing the cross section being given in a CrossSection element, e.g. 'IR absorption cross section'

**Units:** 

**Type:** string


**Constraints:** 


.. _CrossSectionN:

CrossSectionN
-------------------------------------------------------------------


The number of discrete data points in the cross section

**Units:** 

**Type:** integer number


**Constraints:** >0


.. _CrossSectionXA0:

CrossSectionXA0
-------------------------------------------------------------------


The coefficient a0 in the linear series X_i = a0 + a1.i giving the independent variable against which the cross section is given when this data series is an evenly-spaced series of values.

**Units:** 

**Type:** floating-point number


**Constraints:** 


.. _CrossSectionXA1:

CrossSectionXA1
-------------------------------------------------------------------


The coefficient a1 in the linear series X_i = a0 + a1.i giving the independent variable against which the cross section is given when this data series is an evenly-spaced series of values

**Units:** 

**Type:** floating-point number


**Constraints:** 


.. _CrossSectionXDataList:

CrossSectionXDataList
-------------------------------------------------------------------


A list of whitespace-delimited values of the independent variable (e.g. wavelength) against which the cross section is given

**Units:** 

**Type:** string


**Constraints:** 


.. _CrossSectionXError:

CrossSectionXError
-------------------------------------------------------------------


An error (accuracy) applying to each and every data point in the Cross section independent variable data series

**Units:** 

**Type:** floating-point number


**Constraints:** 


.. _CrossSectionXErrorList:

CrossSectionXErrorList
-------------------------------------------------------------------


A list of errors (accuracy values), separated by whitespace, one for each of the data points listed in the cross section independent variable data series (e.g. wavenumber)

**Units:** 

**Type:** string


**Constraints:** 


.. _CrossSectionXName:

CrossSectionXName
-------------------------------------------------------------------


The name of the independent variable against which the cross section is measured (e.g. wavenumber)

**Units:** 

**Type:** string


**Constraints:** 


.. _CrossSectionXUnit:

CrossSectionXUnit
-------------------------------------------------------------------


The units of the independent variable against which the cross section is measured (e.g. 1/cm)

**Units:** 

**Type:** string


**Constraints:** 


.. _CrossSectionYDataList:

CrossSectionYDataList
-------------------------------------------------------------------


A whitespace-delimited list of data points comprising the cross section

**Units:** 

**Type:** string


**Constraints:** 


.. _CrossSectionYError:

CrossSectionYError
-------------------------------------------------------------------


A single error (accuracy) value applying to each and every data point of the cross section

**Units:** 

**Type:** floating-point number


**Constraints:** 


.. _CrossSectionYErrorList:

CrossSectionYErrorList
-------------------------------------------------------------------


A white-space delimited list of error (accuracy) values for each data point given for the cross section

**Units:** 

**Type:** string


**Constraints:** 


.. _CrossSectionYName:

CrossSectionYName
-------------------------------------------------------------------


Name of the Cross Section parameter given (e.g. 'sigma')

**Units:** 

**Type:** string


**Constraints:** 


.. _CrossSectionYUnit:

CrossSectionYUnit
-------------------------------------------------------------------


Units of the cross section (e.g. 'Mb', 'arbitrary', 'km/mol')

**Units:** 

**Type:** string


**Constraints:** 


.. _EnvironmentComment:

EnvironmentComment
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _EnvironmentID:

EnvironmentID
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _EnvironmentRef:

EnvironmentRef
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _EnvironmentSpecies:

EnvironmentSpecies
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _EnvironmentSpeciesConcentration:

EnvironmentSpeciesConcentration
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _EnvironmentSpeciesMoleFraction:

EnvironmentSpeciesMoleFraction
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _EnvironmentSpeciesName:

EnvironmentSpeciesName
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _EnvironmentSpeciesPartialPressure:

EnvironmentSpeciesPartialPressure
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _EnvironmentSpeciesRef:

EnvironmentSpeciesRef
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _EnvironmentTemperature:

EnvironmentTemperature
-------------------------------------------------------------------


Environment temperature

**Units:** K

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** >0


.. _EnvironmentTotalNumberDensity:

EnvironmentTotalNumberDensity
-------------------------------------------------------------------




**Units:** 1/cm3

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _EnvironmentTotalPressure:

EnvironmentTotalPressure
-------------------------------------------------------------------


Environment total pressure

**Units:** bar

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** >0


.. _FunctionArgumentDescription:

FunctionArgumentDescription
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionArgumentLowerLimit:

FunctionArgumentLowerLimit
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number


**Constraints:** 


.. _FunctionArgumentName:

FunctionArgumentName
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionArgumentUnits:

FunctionArgumentUnits
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionArgumentUpperLimit:

FunctionArgumentUpperLimit
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number


**Constraints:** 


.. _FunctionComputerLanguage:

FunctionComputerLanguage
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionDescription:

FunctionDescription
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionExpression:

FunctionExpression
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


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


.. _FunctionParameterDescription:

FunctionParameterDescription
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionParameterName:

FunctionParameterName
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionParameterUnits:

FunctionParameterUnits
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionReferenceFrame:

FunctionReferenceFrame
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionSourceCodeURL:

FunctionSourceCodeURL
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionSourceRef:

FunctionSourceRef
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionYDescription:

FunctionYDescription
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionYLowerLimit:

FunctionYLowerLimit
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number


**Constraints:** 


.. _FunctionYName:

FunctionYName
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionYUnits:

FunctionYUnits
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _FunctionYUpperLimit:

FunctionYUpperLimit
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number


**Constraints:** 


.. _MethodComment:

MethodComment
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _MethodRef:

MethodRef
-------------------------------------------------------------------




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


.. _MoleculeID:

MoleculeID
-------------------------------------------------------------------




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

Has **DataType** suffixes support


**Constraints:** 


.. _MoleculeNormalModeHarmonicFrequency:

MoleculeNormalModeHarmonicFrequency
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _MoleculeNormalModeIntensity:

MoleculeNormalModeIntensity
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _MoleculeNuclearSpins:

MoleculeNuclearSpins
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _MoleculeNuclearSpinsAtomArray:

MoleculeNuclearSpinsAtomArray
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _MoleculeNuclearSpinsBondArray:

MoleculeNuclearSpinsBondArray
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _MoleculeQn:

MoleculeQn
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number


**Constraints:** 


.. _MoleculeQnAttribute:

MoleculeQnAttribute
-------------------------------------------------------------------


Molecular quantum number attribute(s)

**Units:** 

**Type:** string


**Constraints:** 


.. _MoleculeQnCase:

MoleculeQnCase
-------------------------------------------------------------------


Case name for the case-by-case molecular state description

**Units:** 

**Type:** string


**Constraints:** 


.. _MoleculeQnComment:

MoleculeQnComment
-------------------------------------------------------------------


Additional comments for molecular quantum numbers

**Units:** 

**Type:** string


**Constraints:** 


.. _MoleculeQnLabel:

MoleculeQnLabel
-------------------------------------------------------------------


Case label for the case-by-case molecular state description

**Units:** 

**Type:** string


**Constraints:** 


.. _MoleculeQnStateID:

MoleculeQnStateID
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _MoleculeSpeciesID:

MoleculeSpeciesID
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _MoleculeStateCharacLifeTime:

MoleculeStateCharacLifeTime
-------------------------------------------------------------------


Molecular state lifetime in seconds

**Units:** s

**Type:** floating-point number

Has **DataType** suffixes support


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

Has **DataType** suffixes support


**Constraints:** 


.. _MoleculeStateID:

MoleculeStateID
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _MoleculeStateQuantumNumbers:

MoleculeStateQuantumNumbers
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


.. _NodeID:

NodeID
-------------------------------------------------------------------


A unique string for each VAMDC node. For example used for xsams-internal referencing. This MUST be filled.

**Units:** 

**Type:** string


**Constraints:** 


.. _NonRadTranEnergy:

NonRadTranEnergy
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _NonRadTranProbability:

NonRadTranProbability
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _NonRadTranWidth:

NonRadTranWidth
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _NormalModeHarmonicFrequency:

NormalModeHarmonicFrequency
-------------------------------------------------------------------


The harmonic frequency of a normal mode

**Units:** 1/cm

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** >0


.. _NormalModeIntensity:

NormalModeIntensity
-------------------------------------------------------------------


Intensity of a normal mode

**Units:** km/mol

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** >0


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

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransBandWidth:

RadTransBandWidth
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransBroadeningDopplerComment:

RadTransBroadeningDopplerComment
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningDopplerEnvironment:

RadTransBroadeningDopplerEnvironment
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningDopplerLineshapeName:

RadTransBroadeningDopplerLineshapeName
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningDopplerLineshapeParameter:

RadTransBroadeningDopplerLineshapeParameter
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransBroadeningDopplerLineshapeParameterName:

RadTransBroadeningDopplerLineshapeParameterName
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningDopplerMethod:

RadTransBroadeningDopplerMethod
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningDopplerRef:

RadTransBroadeningDopplerRef
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningInstrumentComment:

RadTransBroadeningInstrumentComment
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningInstrumentEnvironment:

RadTransBroadeningInstrumentEnvironment
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningInstrumentLineshapeName:

RadTransBroadeningInstrumentLineshapeName
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningInstrumentLineshapeParameter:

RadTransBroadeningInstrumentLineshapeParameter
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransBroadeningInstrumentLineshapeParameterName:

RadTransBroadeningInstrumentLineshapeParameterName
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningInstrumentMethod:

RadTransBroadeningInstrumentMethod
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningInstrumentRef:

RadTransBroadeningInstrumentRef
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningNaturalComment:

RadTransBroadeningNaturalComment
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningNaturalEnvironment:

RadTransBroadeningNaturalEnvironment
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningNaturalLineshapeName:

RadTransBroadeningNaturalLineshapeName
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningNaturalLineshapeParameter:

RadTransBroadeningNaturalLineshapeParameter
-------------------------------------------------------------------


A broadening parameter for natural broadening.

**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransBroadeningNaturalLineshapeParameterName:

RadTransBroadeningNaturalLineshapeParameterName
-------------------------------------------------------------------


The name of natural broadening parameters.

**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningNaturalMethod:

RadTransBroadeningNaturalMethod
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningNaturalRef:

RadTransBroadeningNaturalRef
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningPressureComment:

RadTransBroadeningPressureComment
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningPressureEnvironment:

RadTransBroadeningPressureEnvironment
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningPressureLineshapeName:

RadTransBroadeningPressureLineshapeName
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningPressureLineshapeParameter:

RadTransBroadeningPressureLineshapeParameter
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransBroadeningPressureLineshapeParameterName:

RadTransBroadeningPressureLineshapeParameterName
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningPressureMethod:

RadTransBroadeningPressureMethod
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransBroadeningPressureRef:

RadTransBroadeningPressureRef
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransComments:

RadTransComments
-------------------------------------------------------------------


(String)

**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransEffectiveLandeFactor:

RadTransEffectiveLandeFactor
-------------------------------------------------------------------


Effective Lande factor for a given transition

**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransEnergy:

RadTransEnergy
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransFinalStateRef:

RadTransFinalStateRef
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransFrequency:

RadTransFrequency
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransInitialStateRef:

RadTransInitialStateRef
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransProbabilityA:

RadTransProbabilityA
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransProbabilityIdealisedIntensity:

RadTransProbabilityIdealisedIntensity
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransProbabilityLineStrength:

RadTransProbabilityLineStrength
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransProbabilityLog10WeightedOscillatorStrength:

RadTransProbabilityLog10WeightedOscillatorStrength
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransProbabilityMultipole:

RadTransProbabilityMultipole
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransProbabilityOscillatorStrength:

RadTransProbabilityOscillatorStrength
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransProbabilityWeightedOscillatorStrength:

RadTransProbabilityWeightedOscillatorStrength
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransRefs:

RadTransRefs
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransSpeciesRef:

RadTransSpeciesRef
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _RadTransWavelength:

RadTransWavelength
-------------------------------------------------------------------




**Units:** A

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _RadTransWavenumber:

RadTransWavenumber
-------------------------------------------------------------------




**Units:** 

**Type:** floating-point number

Has **DataType** suffixes support


**Constraints:** 


.. _SourceAuthorName:

SourceAuthorName
-------------------------------------------------------------------


Name of one of the authors

**Units:** 

**Type:** string


**Constraints:** 


.. _SourceCategory:

SourceCategory
-------------------------------------------------------------------


Type of publication, e.g. journal, book etc.

**Units:** 

**Type:** string


**Constraints:** Journal | Book | Proceedings | On-line


.. _SourceID:

SourceID
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _SourceName:

SourceName
-------------------------------------------------------------------


E.g. JQSRT

**Units:** 

**Type:** string


**Constraints:** 


.. _SourcePageBegin:

SourcePageBegin
-------------------------------------------------------------------


Starting page number

**Units:** 

**Type:** integer number


**Constraints:** >=0


.. _SourcePageEnd:

SourcePageEnd
-------------------------------------------------------------------




**Units:** 

**Type:** string


**Constraints:** 


.. _SourceTitle:

SourceTitle
-------------------------------------------------------------------


Full title of the paper

**Units:** 

**Type:** string


**Constraints:** 


.. _SourceURI:

SourceURI
-------------------------------------------------------------------


Webb link to the publication

**Units:** 

**Type:** string


**Constraints:** 


.. _SourceVolume:

SourceVolume
-------------------------------------------------------------------


Volumen number

**Units:** 

**Type:** integer number


**Constraints:** >0


.. _SourceYear:

SourceYear
-------------------------------------------------------------------


Publication Year

**Units:** 

**Type:** integer number


**Constraints:** >0

