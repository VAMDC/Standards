.. _changes:


Changelog
====================

The Restrictables, Requestables and Returnables continue to evolve to reflect the changes to the XML Schema (XSAMS) and the query language. 
Listed below are the additions and deletions for each category. Note that a renaming will be represented as deletion of the old and addition of the new keyword.


Changes between 11.12 and 12.07 releases:
----------------------------------------------

Requestables
++++++++++++++

Added MoleculeBasisStates keyword, renamed RadiativeCrossections into RadiativeCrossSections


Restrictables
++++++++++++++

Deletions:
~~~~~~~~~~~

* NormalModeSymmetry
* Pressure (EnvironmentPressure should be used instead)
* Temperature (EnvironmentTemperature should be used instead)
* RadTransBandCentre
* RadTransBandWidth

Additions:

* SpeciesID
* VAMDCSpeciesID


Returnables
+++++++++++++++++++

Returnables evolve a lot with each XSAMS and Python Node Software release, so no precise changelog is given.





Changes before 11.12 release:
---------------------------------

Restrictables
+++++++++++++++

Additions:
~~~~~~~~~~~~

AtomStateTotalAngMom, Inchi, IonCharge, MethodCategory, MoleculeQNJ, MoleculeQNK, MoleculeQNKa, MoleculeQNKc, MoleculeQNv, MoleculeQNv1, MoleculeQNv2, MoleculeQNv3, MoleculeStateNuclearSpinIsomer, ParticleName, RadTransBroadeningDoppler, RadTransBroadeningInstrument, RadTransBroadeningNatural, RadTransBroadeningPressure, StateEnergy, StateLifeTime, StateStatisticalWeight

Deletions:
~~~~~~~~~~~~

AtomInchi, AtomInchiKey, AtomIonCharge, AtomStateEnergy, AtomStateID, AtomStateLifeTime, AtomStateStatisticalWeight, CollisionThreshold, MoleculeInchi, MoleculeInchiKey, MoleculeNormalModeIntensity, MoleculeStateCharacLifeTime, MoleculeStateCharacNuclearSpinSymmetry, MoleculeStateEnergy, MoleculeStateID

Requestables
+++++++++++++++++

Additions:
~~~~~~~~~~~~

Functions, RadiativeCrossections

Deletions:
~~~~~~~~~~~~

None

