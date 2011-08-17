
AsOfDate
-------------------------------------------------------------------


Return data excluding any additions or improvements that were made after the given date (YYYY-MM-DD). This allows for reproducing an earlier query. Note that probably not all nodes support this.



**Type:** string

**Constraints:** 



AtomInchi
-------------------------------------------------------------------


The IUPAC International Chemical Identifier (InChI) is a textual identifier for chemical substances, designed to provide a standard and human-readable way to encode atomic and molecular information and facilitate the search and exchange of such such information in databases and on the web.



**Type:** string

**Constraints:** 



AtomInchiKey
-------------------------------------------------------------------


InChi key is hashed, fixed-length (currently 27 character) form of International Chemical Identifier (InChI) string describing a given atom/ion/isotope. InChIKeys consist of 14 characters resulting from a hash of the connectivity information of the InChI, followed by a hyphen, followed by 9 characters resulting from a hash of the remaining layers of the InChI, followed by a single character indication the version of InChI used, another hyphen, followed by single checksum character. More information about InChI and InChI Key can be found at http://www.iupac.org/inchi/



**Type:** string

**Constraints:** 



AtomIonCharge
-------------------------------------------------------------------


Ionization stage with 0 for neutral



**Type:** integer number

**Constraints:** >=0



AtomMass
-------------------------------------------------------------------


The atomic mass is the mass of an atom expressed in unified atomic mass unit u. It is defined as 1/12 of the rest mass of an unbound carbon-12 atom in its nuclear and electronic ground state. 1 u = 1.660538782(83)E-27 kg.

**Units:** u

**Type:** floating-point number

**Constraints:** >1



AtomMassNumber
-------------------------------------------------------------------


Atomic mass number (A), also called mass number or nucleon number, is the total number of protons and neutrons (together known as nucleons) in an atomic nucleus. Because protons and neutrons both are baryons, the mass number A is identical with the baryon number B as of the nucleus as of the whole atom or ion. The mass number is different for each different isotope of a chemical element. 



**Type:** integer number

**Constraints:** >0



AtomNuclearCharge
-------------------------------------------------------------------


Atomic number or nuclear charge



**Type:** integer number

**Constraints:** >0



AtomNuclearSpin
-------------------------------------------------------------------


The total angular momentum of a nucleus, usually represented as l. For electrons spin and orbital angular momentum are treated separately but particles in a nucleus generally behave as a single entity with intrinsic angular momentum I. Associated with each nuclear spin is a nuclear magnetic moment which produces magnetic interactions with its environment.



**Type:** floating-point number

**Constraints:** 



AtomStateCoupling
-------------------------------------------------------------------


Coupling scheme used to describe the state. Currently five coupling schemes are supported LS, jj, J1J2, jK and LK. For a detailed description of these and other schemes see, e.g., Atomic Spectroscopy at http://physics.nist.gov/Pubs/AtSpec/index.html



**Type:** string

**Constraints:** 



AtomStateEnergy
-------------------------------------------------------------------


Energy of the level



**Type:** floating-point number

**Constraints:** >=0



AtomStateHyperfineMomentum
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



AtomStateID
-------------------------------------------------------------------


ID for an atomic state, e.g. for linking a process to the state



**Type:** string

**Constraints:** 



AtomStateIonizationEnergy
-------------------------------------------------------------------


Ionization energy in eV



**Type:** floating-point number

**Constraints:** >0



AtomStateKappa
-------------------------------------------------------------------


Relativistic correction.



**Type:** floating-point number

**Constraints:** 



AtomStateLandeFactor
-------------------------------------------------------------------


Lande factor



**Type:** floating-point number

**Constraints:** 



AtomStateLifeTime
-------------------------------------------------------------------


Life time of an atomic state in s.

**Units:** s

**Type:** floating-point number

**Constraints:** >0



AtomStateMagneticQuantumNumber
-------------------------------------------------------------------


Magnetic quantum number of a state, can be integer or half-integer, positive and negative.



**Type:** floating-point number

**Constraints:** 



AtomStateParity
-------------------------------------------------------------------


State parity. Can have values: "even", "odd" or "undefined"



**Type:** string

**Constraints:** 



AtomStatePolarizability
-------------------------------------------------------------------


State polarizability.



**Type:** floating-point number

**Constraints:** 



AtomStateQuantumDefect
-------------------------------------------------------------------


The quantum defect is a correction applied to the potential to account for the fact that the inner electrons do not entirely screen the corresponding charge of the nucleus. It is particularity important for atoms with single electron in the outer shell.



**Type:** floating-point number

**Constraints:** 



AtomStateStatisticalWeight
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



AtomSymbol
-------------------------------------------------------------------


Atomic name



**Type:** string

**Constraints:** 



CollisionCode
-------------------------------------------------------------------






**Type:** string

**Constraints:** 



CollisionIAEACode
-------------------------------------------------------------------






**Type:** string

**Constraints:** 



CollisionThreshold
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



EnvironmentSpeciesConcentration
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



EnvironmentSpeciesMoleFraction
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



EnvironmentSpeciesPartialPressure
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



EnvironmentTemperature
-------------------------------------------------------------------


Environment temperature

**Units:** K

**Type:** floating-point number

**Constraints:** >0



EnvironmentTotalNumberDensity
-------------------------------------------------------------------




**Units:** 1/cm3

**Type:** floating-point number

**Constraints:** 



EnvironmentTotalPressure
-------------------------------------------------------------------


Environment total pressure

**Units:** Pa

**Type:** floating-point number

**Constraints:** >=0



FunctionID
-------------------------------------------------------------------






**Type:** string

**Constraints:** 



FunctionName
-------------------------------------------------------------------






**Type:** string

**Constraints:** 



InchiKey
-------------------------------------------------------------------


International Chemical Identifier (InChI) key (27-character or 14-character first part)



**Type:** string

**Constraints:** 



MoleculeChemicalName
-------------------------------------------------------------------


Conventional molecule name, e.g. CO2, NH3, Feh (may not be unique)



**Type:** string

**Constraints:** 



MoleculeInchi
-------------------------------------------------------------------






**Type:** string

**Constraints:** 



MoleculeInchiKey
-------------------------------------------------------------------






**Type:** string

**Constraints:** 



MoleculeIonCharge
-------------------------------------------------------------------


Molecule ion charge



**Type:** integer number

**Constraints:** 



MoleculeMolecularWeight
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



MoleculeNormalModeHarmonicFrequency
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



MoleculeNormalModeIntensity
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



MoleculeProtonation
-------------------------------------------------------------------






**Type:** string

**Constraints:** 



MoleculeStateEnergy
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



MoleculeStateID
-------------------------------------------------------------------






**Type:** string

**Constraints:** 



MoleculeStateLifeTime
-------------------------------------------------------------------


Molecular state lifetime in seconds

**Units:** s

**Type:** floating-point number

**Constraints:** >0



MoleculeStateNuclearSpinIsomer
-------------------------------------------------------------------


Nuclear spin isomer (symetry) of a molecular state.



**Type:** string

**Constraints:** (ortho|para|A|E|none)



MoleculeStateTotalStatisticalWeight
-------------------------------------------------------------------


Total statistical weight (degeneracy) for a given molecular energy level



**Type:** integer number

**Constraints:** >0



MoleculeStoichiometricFormula
-------------------------------------------------------------------


Molecular stoichiometric formula



**Type:** string

**Constraints:** 



NonRadTranEnergy
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



NonRadTranProbability
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



NonRadTranWidth
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



NormalModeSymmetry
-------------------------------------------------------------------


The character of the irreducible representation for this vibrational normal mode in the molecular point group



**Type:** string

**Constraints:** 



Pressure
-------------------------------------------------------------------


Pressure as a Restrictable alone. Each node can decide itself how to interpret and treat this, if it makes sense to its data.

**Units:** Pa

**Type:** floating-point number

**Constraints:** >=0



RadTransBandCentre
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



RadTransBandWidth
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



RadTransBroadeningDoppler
-------------------------------------------------------------------


Only Restrictable (not NULL) to make a query where there is Broadening information.



**Type:** string

**Constraints:** 



RadTransBroadeningInstrument
-------------------------------------------------------------------


Only Restrictable (not NULL) to make a query where there is Broadening information.



**Type:** string

**Constraints:** 



RadTransBroadeningNatural
-------------------------------------------------------------------


Only Restrictable (not NULL) to make a query where there is Broadening information.



**Type:** string

**Constraints:** 



RadTransBroadeningPressure
-------------------------------------------------------------------


Only Restrictable (not NULL) to make a query where there is Broadening information.



**Type:** string

**Constraints:** 



RadTransEffectiveLandeFactor
-------------------------------------------------------------------


Effective Lande factor for a given transition



**Type:** floating-point number

**Constraints:** 



RadTransEnergy
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



RadTransFrequency
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



RadTransProbabilityA
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



RadTransProbabilityIdealisedIntensity
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



RadTransProbabilityLineStrength
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



RadTransProbabilityLog10WeightedOscillatorStrength
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



RadTransProbabilityOscillatorStrength
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



RadTransProbabilityWeightedOscillatorStrength
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



RadTransWavelength
-------------------------------------------------------------------




**Units:** A

**Type:** floating-point number

**Constraints:** 



RadTransWavenumber
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



SourceCategory
-------------------------------------------------------------------


Type of publication, e.g. journal, book etc.



**Type:** string

**Constraints:** Journal | Book | Proceedings | On-line



SourceYear
-------------------------------------------------------------------


Publication Year



**Type:** integer number

**Constraints:** >0



Temperature
-------------------------------------------------------------------


Temperature as a Restrictable alone. Each node can decide itself how to interpret and treat this, if it makes sense to its data.

**Units:** K

**Type:** floating-point number

**Constraints:** >0

