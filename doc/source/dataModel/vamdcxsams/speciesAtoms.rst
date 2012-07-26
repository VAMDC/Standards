.. _atoms:

Species.Atoms
=================

This section describes static properties of atoms and
atomic ions such as state energy, total angular momentum, composition of
the wave function with mixing coefficients, etc.



Atoms
--------

	The element **Atoms** of type **AtomsType** is a container for one or more **Atom**
	elements of type **AtomType**.

	.. image:: images/atoms/Atoms.png

Atom
------------
	**AtomType** is an extension of :ref:`PrimaryType`, additionally containing 
	
	* mandatory element **ChemicalElement** of type :ref:`ChemicalElementType`
	* one or more **Isotope** elements of type **IsotopeType**.

	.. image:: images/atoms/Atom.png

Isotope
---------------
	
	**Isotope** element of **IsotopeType** defines a sequence containing
	
	*	optional **IsotopeParameters** element of type **IsotopeParametersType**, 
	*	one or more :ref:`atomicion` elements of type **AtomicIonType**, 
	*	optional **Comments** element of type **xs:string**.

	.. image:: images/atoms/Isotope.png

IsotopeParameters
------------------------

	**IsotopeParameters** element, having type **IsotopeParametersType**,  is an extension of :ref:`PrimaryType`,
	defining additionally:
	
	*	mandatory integer element **MassNumber** that is the total number of nucleons (protons plus neutrons). 
	*	optional element **Mass** of type :ref:`DataType` 
	*	optional element **NuclearSpin** of type :ref:`AngularMomentumType`.

	.. image:: images/atoms/IsotopeParameters.png

.. _atomicion:

Ion
-------------------

	Ion element, with type **AtomicIonType**, is an extension of :ref:`PrimaryType`,
	defining additionally:
	
	*	mandatory **speciesID** attribute for referencing this atom from processes or environments
	*	mandatory **IonCharge** integer element
	*	optional **IsoelectronicSequence** element of type :ref:`ElementSymbolType`
	*	none or one or more :ref:`AtomicState` elements of type **AtomicStateType**
	*	optional **InChI** element to keep [INCHI] identifier for atom
	*	mandatory **InChIKey** element for [INCHIKey] of this ion.
		InChIKey element is mandatory since it is a fast and reliable way to see if we are talking
		about the same element, when comparing data originating from different sources.
		
	.. image:: images/atoms/AtomicIon.png

.. _AtomicState:

AtomicState
----------------


	.. image:: images/atoms/AtomicState.png

	AtomicState element of type **AtomicStateType**, again extending :ref:`PrimaryType`, holds
	all information about specific atomic states and defines following attributes and elements:
	
	*	mandatory **stateID** attribute of type :ref:`StateIDType` that is used to refer to this specific 
		state from processes branch,
	*	optional string **Description** element that may contain short description or some label of state,
	*	optional :ref:`AtomicNumericalData` element of type **AtomicNumericalDataType** that 
		may contain numerical information about state,
	*	optional :ref:`AtomicQuantumNumbers` element of type **AtomicQuantumNumbersType** 
		that has elements for atomic quantum numbers describing the state,
	*	optional :ref:`AtomicComposition` element of type **AtomicCompositionType** that may contain 
		wavefunction expansion in a specific basis.
	
	An atomic state is the superposition of the quantum state for each electron in the atom. 
	The quantum numbers for individual electron, or for groups of equivalent electrons, are written 
	in the Component elements within the AtomicComposition element. 
	Quantum numbers describing the atomic state as a whole are written in the AtomicQuantumNumbers element.

	To identify a state fully by its quantum numbers we need the electronic configuration, 
	the coupling term for spin-orbit interactions, 	the total angular momentum, 
	the overall parity and the magnetic quantum number. 
	The configuration and coupling term are part of the AtomicComposition; the total angular momentum, 
	magnetic quantum number and the parity are part of the AtomicQuantumNumbers.

	
	
	
.. _AtomicNumericalData:

AtomicNumericalData
---------------------

	AtomicNumericalData element, extension of the :ref:`PrimaryType` that may contain the 
	following optional elements:
	
	*	**StateEnergy** (above the ion ground state)
	*	**IonizationEnergy**, 
	*	**LandeFactor**, 
	*	**QuantumDefect**, 
	*	**LifeTime** of :ref:`LifeTimeType`, 
	*	**Polarizability**,
	*	**StatisticalWeight**,
	*	**HyperfineConstantA**,
	*	**HyperfineConstantB**.
	
	Most of these elements are of type :ref:`DataType`.
	State lifetime has an optional attribute, describing the decay mechanism.
	The statistical weight of a free atom/ion is an integer, however, in a plasma
	it can become non-integer and therefore here **StatisticalWeight** is
	assumed to be a real number.

	.. image:: images/atoms/AtomicNumericalData.png


.. _AtomicQuantumNumbers:

AtomicQuantumNumbers
------------------------

	Represents quantum numbers of an atomic state. Following elements are defined:
	
	*	**Parity** of type :ref:`ParityType`, 
	*	**TotalAngularMomentum**,
	*	**Kappa** relativistic parameter,
	*	and **HyperfineMomentum** of :ref:`AngularMomentumType`
	*	**MagneticQuantumNumber** of type :ref:`AngularMomentumProjectionType`.

	.. image:: images/atoms/AtomicQuantumNumbers.png

.. _AtomicComposition:

AtomicComposition
----------------------

	Extension of the :ref:`PrimaryType`. Contains components of the atomic
	wavefunction in a specific basis. Each **Component** element is of type 
	**AtomicComponentType**.

	.. image:: images/atoms/AtomicComposition.png

.. _AtomicComponent:

AtomicComponent
-----------------

	Describes individual components of the atomic wavefunction in a specific
	basis. May contain  elements:
	
	*	:ref:`Superconfiguration` of **SuperconfigurationType**,
	*	:ref:`Configuration` of **ConfigurationType**,
	*	**Term** of type :ref:`TermType`, 
	*	**MixingCoefficient** of **MixingCoefficientType**
		MixingCoefficientType is an extension of XML type **double** with the mandatory attribute
		**mixingClass**, that indicates the nature of the mixing coefficients in the expansion of a
		wave function in a specific basis. Allowed values of **mixingClass** attribute are:
		- squared
		- signed
	*	**Comments** string element

	.. image:: images/atoms/AtomicComponentType.png


.. _SuperConfiguration:

SuperConfiguration
'''''''''''''''''''''
	Contains one or more **Supershell** elements (type **SupershellType**), 
	that is, electron distribution over atomic supershells.
	
	.. image:: images/atoms/SuperShell.png
	
	Each **SuperShell** element describes how many electrons populate a specific 
	supershell characterized by a positive-integer principal quantum number *n*. 
	The element **NumberOfElectrons** of type **xs:double** can be non-integer to take into
	account possible plasma effects. 
	
	The element **PrincipalQuantumNumber** is of type **xs:positiveinteger**.

.. _Configuration:

Configuration
'''''''''''''''''

	.. image:: images/atoms/AtomicConfiguration.png

	Describes how electrons are distributed over *nl* shells. May contain:
	
	*	optional **AtomicCore** element (type **AtomicCoreType**), 
		that is used to compactly represent the atomic core. For instance, one may prefer to
		use notation **[Ne]3d** to describe the excited configuration :math:`1s^22s^22p^63d`
		in a Na-like ion. In this case, it would be sufficient to
		only indicate the **ElementCore** element, which will be **Ne**.
		
	*	optional :ref:`Shells` (type **ShellsType**) that contains list of electronic shells or shell pairs
		
	*	string **ConfigurationLabel**, that is used to represent configuration in a
		condensed form, if necessary. For instance, one may prefer to make use of a
		short configuration label *2s2.2p* instead of providing details of shell
		populations etc.
	

.. _AtomicCore:

AtomicCore
````````````````

	.. image:: images/atoms/AtomicCore.png


.. _Shells:

Shells
````````````````
	.. image:: images/atoms/AtomicShells.png
	
	The shells in a configuration can be represented both individually and in terms of shell pairs.
	**ShellPair** describe a coupled pair of atomic shells. In addition to descriptors 
	for each of the shells, it contains the mandatory attribute 
	**shellPairID** to be referenced in a document.


Specific XML Types
------------------------

	Here, XML types, specific to Species.Atoms branch of XSAMS are described

.. _ShellType:

ShellType
'''''''''''''

	.. image:: images/atoms/AtomicShell.png
	
	As an atomic shell is typically represented as :math:`nl^w`
	, all three parameters:
	
	*	**PrincipalQuantumNumber** *n*, 
	*	**OrbitalAngularMomentum** *l*, and 
	*	**NumberOfElectrons** *w* are mandatory.
		**NumberOfElectrons** may be a non-integer decimal number in order to reflect plasma effects.
		
	Other optional parameters include 
	*	**Parity** element (type **ParityType**), 
	*	**TotalAngularMomentum** element (type **AngularMomentumType**)
	*	:math:`\kappa` relativistic parameter (element **Kappa** of type **AngularMomentumType**), 
	*	**ShellTerm** element (type :ref:`TermType`) 
	*	optional attribute **shellID** (type **xs:ID**).


.. _TermType:

TermType
'''''''''''

	Currently an atomic term can be represented in five coupling
	schemes, i.e., :math:`LS`, :math:`jj`, :math:`J_1J_2`, :math:`jK`, and :math:`LK`. For a detailed
	description of these and other schemes see, e.g., *Atomic Spectroscopy* at 
	http://physics.nist.gov/Pubs/AtSpec/index.html

	.. image:: images/atoms/TermType.png

	For each coupling, a separate XML type is defined:

	*	**LSCouplingType**
		Describes LS-coupling in an atomic term in terms of total angular orbital
		momentum *L* (type :ref:`OrbitalAngularMomentumType`) and total spin *S* (type
		:ref:`AngularMomentumType`). Optional element **Multiplicity** is defined as
		:math:`2S+1` and therefore always is a positive integer. 
		Optional element **Seniority** is a non-negative integer with an optional attribute **soureceRef**.
		
		.. image:: images/atoms/TermCouplingLS.png
	
	*	**jjCouplingType**
		Describes jj-coupling in an atomic term as two or more **j**-values (each of
		:ref:`AngularMomentumType`).

		.. image:: images/atoms/TermCouplingJJ.png

	*	**J1J2CouplingType**
		Describes :math:`J_1J_2`-coupling in an atomic term as two or more **j**-values (each
		of **AngularMomentumType**). Similar to the jj-coupling.

	*	**jKCouplingType**
		Describes *jK*-coupling in an atomic term typical in, e.g., noble-gas-like ions. 
		The **K** quantum number is mandatory, while the core momentum **j** 
		and the spin of outer electron(s) **S2** are optional; each of them is of :ref:`AngularMomentumType`.

		.. image:: images/atoms/TermCouplingJK.png

	*	**LKCouplingType**
		Describes *LK* - coupling (or :math:`LS_1`) in an atomic term in terms of atomic core
		angular momentum **L** and its sum with the total spin of the
		core: :math:`\overrightarrow{K} = \overrightarrow{L}+\overrightarrow{S_1}`.
		The spin of outer electron(s) **S2** is an optional element of type :ref:`AngularMomentumType`.

		.. image:: images/atoms/TermCouplingLK.png

	*	**TermLabel**
		This string element is used to represent an atomic term in a condensed form, if necessary.
		For instance, one may prefer to make use of a term label **3P** instead of separately indicating 
		the term **S** and **L** values.

..	_OrbitalAngularMomentumType:

OrbitalAngularMomentumType
'''''''''''''''''''''''''''''

	Represents an orbital angular momentum as a mandatory non-negative integer
	**Value** and an optional lower-case letter **Symbol** (example: **p**).

	.. image:: images/atoms/OrbitalAngularMomentumType.png


Example XML instances
-----------------------
	
	Example instances of Species.Atoms branch subtrees:

Vald Fe example
'''''''''''''''''''

Example from VALD database for :math:`\mathrm{Fe}^{2+}`, with two states present::

      <Atom>
        <ChemicalElement>
          <NuclearCharge>26</NuclearCharge>
          <ElementSymbol>Fe</ElementSymbol>
        </ChemicalElement>
        <Isotope>
          <IsotopeParameters>
            <MassNumber>56</MassNumber>
          </IsotopeParameters>
          <Ion speciesID="Xvald-328">
            <IonCharge>2</IonCharge>
            <AtomicState stateID="Svald-7776">
              <AtomicNumericalData>
                <StateEnergy>
                  <SourceRef>Bvald-K10</SourceRef>
                  <SourceRef>Bvald-K10M</SourceRef>
                  <SourceRef>Bvald-K10Q</SourceRef>
                  <Value units="1/cm">201170.1000</Value>
                </StateEnergy>
              </AtomicNumericalData>
              <AtomicQuantumNumbers>
                <TotalAngularMomentum>2.0</TotalAngularMomentum>
              </AtomicQuantumNumbers>
              <AtomicComposition>
                <Component>
                  <Term>
                    <LS>
                      <L>
                        <Value>2.0</Value>
                      </L>
                      <S>1.0</S>
                    </LS>
                  </Term>
                </Component>
              </AtomicComposition>
            </AtomicState>
            <AtomicState stateID="Svald-7788">
              <AtomicNumericalData>
                <StateEnergy>
                  <SourceRef>Bvald-K10</SourceRef>
                  <SourceRef>Bvald-K10M</SourceRef>
                  <SourceRef>Bvald-K10Q</SourceRef>
                  <Value units="1/cm">105895.3500</Value>
                </StateEnergy>
                <LandeFactor>
                  <SourceRef>Bvald-K10</SourceRef>
                  <SourceRef>Bvald-K10M</SourceRef>
                  <SourceRef>Bvald-K10Q</SourceRef>
                  <Value units="unitless">0.50</Value>
                </LandeFactor>
              </AtomicNumericalData>
              <AtomicQuantumNumbers>
                <TotalAngularMomentum>2.0</TotalAngularMomentum>
              </AtomicQuantumNumbers>
              <AtomicComposition>
                <Component>
                  <Term>
                    <LS>
                      <L>
                        <Value>1.0</Value>
                      </L>
                      <S>1.0</S>
                    </LS>
                  </Term>
                </Component>
              </AtomicComposition>
            </AtomicState>
            <InChI>InChI=1S/Fe/q+2/</InChI>
            <InChIKey>CWYNVVGOOAEACU-IGMARMGPSA-N</InChIKey>
          </Ion>
        </Isotope>
      </Atom>

      
      
Chianti example
'''''''''''''''''''''

In the following example, the quantum description is sufficient to identify the energy level 
but not the states within each level; the magnetic quantum-number is not given. 
I.e. the description ignores the Zeeman splitting of energy levels in a magnetic field.

The electronic configuration is specified as an iso-electronic core and a shell of valence electrons. 
The core, [Ne] in this case, contains electrons whose quantum numbers match those in a Neon atom in its 
ground state. The core consists entirely of full shells and hence its equivalent atom is one of the noble 
gases. The valence shell is denoted by a list of Shell elements, each one describing a sub-shell 
or equivalent electrons.

The spin-orbit coupling is given in the Russell-Saunders (LS) scheme, by a Term element. The coupling 
is described for the entire state by a single term, so the state is considered to have a single Component.

The parity of the state is not given explicitly, but is can be determined from the 
orbital angular moment of the electrons in the valence shell. 
In the state shown, the sum of these momenta is an odd number so the parity is odd.

From the given mark-up, the state can be identified and matched as  [Ne] :math:`3s^{1} 3p^{1} 3P^{o}_{0.0}` ::


      <Atom>
        <ChemicalElement>
          <NuclearCharge>22</NuclearCharge>
          <ElementSymbol>Ti</ElementSymbol>
        </ChemicalElement>
        <Isotope>
          <Ion speciesID="Xchianti-10022">
            <IonCharge>10</IonCharge>
            <AtomicState stateID="Schianti-2010022">
              <Description>3s 3p</Description>
              <AtomicNumericalData>
                <StateEnergy methodRef="Mchianti-EXP">
                  <Value units="1/cm">173200.0</Value>
                </StateEnergy>
              </AtomicNumericalData>
              <AtomicQuantumNumbers>
                <TotalAngularMomentum>0.0</TotalAngularMomentum>
              </AtomicQuantumNumbers>
              <AtomicComposition>
                <Component>
                  <Configuration>
                    <AtomicCore>
                      <ElementCore>Ne</ElementCore>
                      <Term/>
                    </AtomicCore>
                    <Shells>
                      <Shell>
                        <PrincipalQuantumNumber>3</PrincipalQuantumNumber>
                        <OrbitalAngularMomentum>
                          <Value>0</Value>
                        </OrbitalAngularMomentum>
                        <NumberOfElectrons>1</NumberOfElectrons>
                        <ShellTerm/>
                      </Shell>
                      <Shell>
                        <PrincipalQuantumNumber>3</PrincipalQuantumNumber>
                        <OrbitalAngularMomentum>
                          <Value>1</Value>
                        </OrbitalAngularMomentum>
                        <NumberOfElectrons>1</NumberOfElectrons>
                        <ShellTerm/>
                      </Shell>
                    </Shells>
                  </Configuration>
                  <Term>
                    <LS>
                      <L>
                        <Value>1</Value>
                      </L>
                      <S>1.0</S>
                    </LS>
                  </Term>
                </Component>
              </AtomicComposition>
            </AtomicState>
            …
            
            