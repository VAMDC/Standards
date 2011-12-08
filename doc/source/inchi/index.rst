.. _inchi-index:
.. |inchi-version| replace:: 11.05

==============================================================================================
InChI/InChIKey [v |inchi-version|] [r |release|]
==============================================================================================


Species Identification: The IUPAC International Chemical Identifier (InChI\ :sup:`TM`)
=======================================================================================

In order to uniquely identify common species across participant VAMDC databases, the IUPAC International Chemical Identifier, and in particular a hash (based on SHA-1) of this identifier (the InChIKey) must be generated for each species within each participant VAMDC node.  

There are some important things to remember when generating InChI(Key)s:

Isotopic Layer Specification
----------------------------

When generating InChI(Key)s, it is very important to specify **all** the isotopes of **all** the atoms within a species, including hydrogen. If these are not specifed, the InChI standard will assume the rounded average terrestrial abundance of each atom, which is **not** necessarily equal to the most abundant.  For atoms lighter than Nickel, the integer average mass matches the most abundant.  From Nickel onwards there are 31 atoms where the mass of the most abundant isotope does not match the rounded average (see appendix below).

In addition to this, even with the assumed default isotope, the InChI standard will treat explicitly specified isotopes (even when they happen to be the same as the assumed default) differently.

For example, for water, H\ :sub:`2`\ O, the InChI and InChIKey are::

  InChI=1S/H2O/h1H2
  XLYOFNOQVPJJNP-UHFFFAOYSA-N

but for \ :sup:`1`\ H\ :sub:`2`\ :sup:`16`\ O, the InChI and InChIKey are::

  InChI=1S/H2O/h1H2/i1+0/hH2
  XLYOFNOQVPJJNP-FNDQEIABSA-N

The **latter form** should be used.  Note again that all isotopes of all atoms are explicitly stated.  H\ :sub:`2`\ :sup:`16`\ O (i.e. non-specifiction of hydrogen isotope) will produce another different InChI.  This form should **not** be used.  Likewise for atomic species, isotopes must be explicitly specified.


Molecule Structure
------------------

Generating an InChI requires knowledge of the molecule's (2D) structure, in particular the connectivity of each atom. InChI codes are thus unique for isomers and isotopologues (though not nuclear spin isomers or conformers).


Tools for Generating InChI(Key)s
--------------------------------

The definitive tools to generate InChI codes are provided by `IUPAC <http://www.iupac.org/inchi/>`_. The tools currently accept input in the form of SD files, MOL files or Chemical Markup Language (CML).  `Open Babel <http://openbabel.org/wiki/Main_Page>`_ is a suite of tools that can be used to generate InChI(Key)s from numerous input formats in addition to those accepted by the IUPAC tools (e.g. SMILES, SMARTS). Interfaces to the underlying Open Babel C++ code for Java, Perl and Python are also available.

The following are example input SMILES and CML for methane (\ :sup:`12`\ C\ :sup:`1`\ H\ :sub:`4`\ ), using explicit isotopic definitions, which can be used by the tools above to generate InChIs with the included explicit isotopic layer.  Note that for SMILES the hydrogens (normally implicit) need to be specified explicitly, which does make SMILES strings more complex to create.  (The default SMILES notation for methane is C.)

SMILES::

  [12C]([1H])([1H])([1H])[1H]

CML::

  <molecule id="CH4-1">
  <atomArray>
    <atom id="C1" elementType="C" isotopeNumber="12"/>
    <atom id="H1" elementType="H" isotopeNumber="1"/>
    <atom id="H2" elementType="H" isotopeNumber="1"/>
    <atom id="H3" elementType="H" isotopeNumber="1"/>
    <atom id="H4" elementType="H" isotopeNumber="1"/>
  </atomArray>
  <bondArray>
    <bond atomRefs2="C1 H1" id="C1_H1" order="S"/>
    <bond atomRefs2="C1 H2" id="C1_H2" order="S"/>
    <bond atomRefs2="C1 H3" id="C1_H3" order="S"/>
    <bond atomRefs2="C1 H4" id="C1_H4" order="S"/>
  </bondArray>
  </molecule>

Both inputs will result in the following InChI and InChIKey::

  InChI=1S/CH4/h1H4/i1+0H4
  VNWKTOKETHGBQD-XDMSWEHDSA-N


Appendix
--------

**Table of InChI Assumed Isotope Masses when isotope not explicitly specified**

+----------------+------------+--------------------------------+--------------------------+
| **Element**    | **Symbol** | **Most Abundant Isotope Mass** | **InChI Assumed Mass**   |
+----------------+------------+--------------------------------+--------------------------+
| Nickel         | Ni         | 58                             | 59                       |
+----------------+------------+--------------------------------+--------------------------+
| Copper         | Cu         | 63                             | 64                       |
+----------------+------------+--------------------------------+--------------------------+
| Zinc           | Zn         | 64                             | 65                       |
+----------------+------------+--------------------------------+--------------------------+
| Gallium        | Ga         | 69                             | 70                       |
+----------------+------------+--------------------------------+--------------------------+
| Germanium      | Ge         | 74                             | 73                       |
+----------------+------------+--------------------------------+--------------------------+
| Selenium       | Se         | 80                             | 79                       |
+----------------+------------+--------------------------------+--------------------------+
| Bromine        | Br         | 79                             | 80                       |
+----------------+------------+--------------------------------+--------------------------+
| Zirconium      | Zr         | 90                             | 91                       |
+----------------+------------+--------------------------------+--------------------------+
| Molybdenum     | Mo         | 98                             | 96                       |
+----------------+------------+--------------------------------+--------------------------+
| Ruthenium      | Ru         | 102                            | 101                      |
+----------------+------------+--------------------------------+--------------------------+
| Silver         | Ag         | 107                            | 108                      |
+----------------+------------+--------------------------------+--------------------------+
| Cadmium        | Cd         | 114                            | 112                      |
+----------------+------------+--------------------------------+--------------------------+
| Tin            | Sn         | 120                            | 119                      |
+----------------+------------+--------------------------------+--------------------------+
| Antimony       | Sb         | 121                            | 122                      |
+----------------+------------+--------------------------------+--------------------------+
| Tellurium      | Te         | 130                            | 128                      |
+----------------+------------+--------------------------------+--------------------------+
| Xenon          | Xe         | 132                            | 131                      |
+----------------+------------+--------------------------------+--------------------------+
| Barium         | Ba         | 138                            | 137                      |
+----------------+------------+--------------------------------+--------------------------+
| Neodymium      | Nd         | 142                            | 144                      |
+----------------+------------+--------------------------------+--------------------------+
| Samarium       | Sm         | 152                            | 150                      |
+----------------+------------+--------------------------------+--------------------------+
| Europium       | Eu         | 153                            | 152                      |
+----------------+------------+--------------------------------+--------------------------+
| Gadolinium     | Gd         | 158                            | 157                      |
+----------------+------------+--------------------------------+--------------------------+
| Dysprosium     | Dy         | 164                            | 163                      |
+----------------+------------+--------------------------------+--------------------------+
| Erbium         | Er         | 166                            | 167                      |
+----------------+------------+--------------------------------+--------------------------+
| Ytterbium      | Yb         | 174                            | 173                      |
+----------------+------------+--------------------------------+--------------------------+
| Hafnium        | Hf         | 180                            | 178                      |
+----------------+------------+--------------------------------+--------------------------+
| Rhenium        | Re         | 187                            | 186                      |
+----------------+------------+--------------------------------+--------------------------+
| Osmium         | Os         | 192                            | 190                      |
+----------------+------------+--------------------------------+--------------------------+
| Iridium        | Ir         | 193                            | 192                      |
+----------------+------------+--------------------------------+--------------------------+
| Mercury        | Hg         | 202                            | 201                      |
+----------------+------------+--------------------------------+--------------------------+
| Thallium       | Tl         | 205                            | 204                      |
+----------------+------------+--------------------------------+--------------------------+
| Lead           | Pb         | 208                            | 207                      |
+----------------+------------+--------------------------------+--------------------------+
