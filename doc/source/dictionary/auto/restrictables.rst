
AsOfDate
-------------------------------------------------------------------


Return data excluding any additions or improvements that were made after the given date (YYYY-MM-DD). This allows for reproducing an earlier query. Note that probably not all nodes support this.



**Type:** string

**Constraints:** 



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



AtomStateHyperfineMomentum
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



AtomStateIonizationEnergy
-------------------------------------------------------------------


Ionization energy in eV

**Units:** 1/cm

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



AtomStateTotalAngMom
-------------------------------------------------------------------






**Type:** integer number

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



EnvironmentSpeciesConcentration
-------------------------------------------------------------------


The concentration of a species contributing to an Environment



**Type:** floating-point number

**Constraints:** 



EnvironmentSpeciesMoleFraction
-------------------------------------------------------------------


The mole fraction of a species contributing to an Environment



**Type:** floating-point number

**Constraints:** 



EnvironmentSpeciesPartialPressure
-------------------------------------------------------------------


The partial pressure of a species contributing to an Environment



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


The total number density of particles comprising an Environment

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


A unique identifier for this function, of the form 'Fxxx'



**Type:** string

**Constraints:** 



FunctionName
-------------------------------------------------------------------


The name of this function



**Type:** string

**Constraints:** 



Inchi
-------------------------------------------------------------------


The IUPAC International Chemical Identifier (InChI) is a textual identifier for chemical substances, designed to provide a standard and human-readable way to encode atomic and molecular information and facilitate the search and exchange of such such information in databases and on the web.



**Type:** string

**Constraints:** 



InchiKey
-------------------------------------------------------------------


InChi key is hashed, fixed-length (currently 27 character) form of International Chemical Identifier (InChI) string describing a given atom/ion/isotope. InChIKeys consist of 14 characters resulting from a hash of the connectivity information of the InChI, followed by a hyphen, followed by 9 characters resulting from a hash of the remaining layers of the InChI, followed by a single character indication the version of InChI used, another hyphen, followed by single checksum character. More information about InChI and InChI Key can be found at http://www.iupac.org/inchi/



**Type:** string

**Constraints:** 



IonCharge
-------------------------------------------------------------------


Ionization stage with 0 for neutral



**Type:** integer number

**Constraints:** >=0



MethodCategory
-------------------------------------------------------------------


Method category. Allowed values are: experiment, theory, ritz, recommended, evaluated, empirical, scalingLaw, semiempirical, compilation, derived




**Type:** string

**Constraints:** 



MoleculeChemicalName
-------------------------------------------------------------------


Conventional molecule name, e.g. CO2, NH3, Feh (may not be unique)



**Type:** string

**Constraints:** 



MoleculeMolecularWeight
-------------------------------------------------------------------




**Units:** u

**Type:** floating-point number

**Constraints:** 



MoleculeNormalModeHarmonicFrequency
-------------------------------------------------------------------


The harmonic frequency of a normal mode.

**Units:** MHz

**Type:** floating-point number

**Constraints:** 



MoleculeProtonation
-------------------------------------------------------------------






**Type:** string

**Constraints:** 



MoleculeQNJ
-------------------------------------------------------------------


The molecular J quantum number for total angular momentum excluding nuclear spin



**Type:** floating-point number

**Constraints:** 



MoleculeQNK
-------------------------------------------------------------------


K is the quantum number associated with the projection of the total angular momentum excluding nuclear spin, J, onto the molecular symmetry axis.



**Type:** integer number

**Constraints:** 



MoleculeQNKa
-------------------------------------------------------------------


Ka is the rotational quantum label of an asymmetric top molecule, correlating to K in the prolate symmetric top limit.



**Type:** integer number

**Constraints:** 



MoleculeQNKc
-------------------------------------------------------------------


Kc is the rotational quantum label of an asymmetric top molecule, correlating to K in the oblate symmetric top limit.



**Type:** integer number

**Constraints:** 



MoleculeQNv
-------------------------------------------------------------------


For diatomic molecules, the vibrational quantum number, v



**Type:** integer number

**Constraints:** 



MoleculeQNv1
-------------------------------------------------------------------


The v1 vibrational quantum number.



**Type:** integer number

**Constraints:** 



MoleculeQNv2
-------------------------------------------------------------------


The v2 vibrational quantum number.



**Type:** integer number

**Constraints:** 



MoleculeQNv3
-------------------------------------------------------------------


The v3 vibrational quantum number.



**Type:** integer number

**Constraints:** 



MoleculeStateNuclearSpinIsomer
-------------------------------------------------------------------


Nuclear spin isomer (symmetry) of a molecular state. Can take values like 'ortho','para','A','E','meta', etc.



**Type:** string

**Constraints:** (ortho|para|A|E|none)



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



ParticleName
-------------------------------------------------------------------


Particle name, one of photon, electron, muon, positron, neutron, alpha, cosmic



**Type:** string

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


The energy of a radiative transition



**Type:** floating-point number

**Constraints:** 



RadTransFrequency
-------------------------------------------------------------------


Radiative transition frequency.

**Units:** MHz

**Type:** floating-point number

**Constraints:** 



RadTransProbabilityA
-------------------------------------------------------------------


The Einstein coefficient for spontaneous radiative de-excitation (emission) A.

**Units:** 1/s

**Type:** floating-point number

**Constraints:** >= 0



RadTransProbabilityIdealisedIntensity
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



RadTransProbabilityLineStrength
-------------------------------------------------------------------


Line profile-integrated absorption for transition between two energy levels. Line strength K = h&nu; / 4&pi; (n<sub>1</sub> B<sub>12</sub> - n<sub>2</sub> B<sub>21</sub>)

**Units:** 1/cm

**Type:** floating-point number

**Constraints:** >0



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


Radiative transition vacuum wavelength

**Units:** A

**Type:** floating-point number

**Constraints:** 



RadTransWavenumber
-------------------------------------------------------------------


Radiative transition wavenumber.



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



SpeciesID
-------------------------------------------------------------------


Node-specific species identifier, last measure to uniquely identify species if any other identifiers collide



**Type:** string

**Constraints:** 



StateEnergy
-------------------------------------------------------------------


Energy of the level

**Units:** 1/cm

**Type:** floating-point number

**Constraints:** >=0



StateLifeTime
-------------------------------------------------------------------


Life time of an atomic state in s.

**Units:** s

**Type:** floating-point number

**Constraints:** >0



StateStatisticalWeight
-------------------------------------------------------------------






**Type:** floating-point number

**Constraints:** 



VAMDCSpeciesID
-------------------------------------------------------------------


Internal VAMDC species identifier, inchikey plus suffix, used in case inchikeys collide for molecules.



**Type:** string

**Constraints:** 

