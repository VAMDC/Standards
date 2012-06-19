.. _XSAMSProcessCodes:

XSAMS Process Codes
=================================

Introduction
------------------

In order to facilitate searching and sorting XSAMS files or blocks of data
within a file, a classification scheme is defined to provide standard
definitions for the fundamental process that is being described (e.g., the
reflection of a particle from a surface or the excitation of an atomic
state). 

The process codes are "fundamental" in that they do not define the reactions
to a great degree of detail that is carried out by specific elements of the
overall schema.  Rather, they provide a high level identification that can be
used to aggregate similar data or provide a simple search point.  


Process Codes
-----------------

The following table defines the fundamental reactant codes.  The process codes
embody a high level description and a much more complete definition of the
process that data pertain to is contained in the elements of the full schema. 
Processes are split into two categories: collisions (electron and heavy
particle collisions) and particle surface interactions (PSI).  Within each
category, the codes are intended for use with any reactant.  For example, a
single process code is used to describe elastic scattering whatever is the
projectile (electron, photon, atom, ion or molecule).

This approach has been taken not only for economy but because an exhaustive
list of processes involving elementary particles, atoms, molecules, and solids
is not likely possible.  Even if it were, using it would be cumbersome in that
some non-intuitive coding would be necessary, for example, to encode inverse
bremstrahlung, sublimation of water from a dust grain, a production of an
atomic inner shell vacancy with a subsequent Coster-Kronig decay, etc. 

Multiple process codes can be given in order to build more complex
descriptions from the fundamental processes, e.g., charge transfer +
ionization in ion-atom collisions could be described by the code for
ionization (liberation of an electron from the target or projectile to the
continuum) and the code for charge transfer (the transfer of an electron from
one collision partner to another). This combining of individual codes avoids
the need for a code for all possible combinations of processes that are at
least relatively common, e.g., dissociative recombination simply has the codes
for dissociation and for recombination.  Other examples of combinations of
codes are given in the final table.


Atomic and Molecular Collisions
----------------------------------

======  =====================   =======================================================
Code     Name                          Description
======  =====================   =======================================================
phem    Photon emission             Emission of a photon or photons from a reactant
                                    (e.g.,. atom, molecule, surface), fluorescence
phab    Photon absorption           Absorption of a photon or photons
                                    from a reactant (e.g., atom, molecule, surface)
phsc    Photon scattering           Scattering of a photon or photons by a reactant
elas    Elastic scattering          Scattering of one reactant from another without 
                                    change of state or energy, including related 
                                    processes such as momentum transfer
inel    Inelastic scattering        Scattering of one reactant from another with 
                                    change of state or energy. This code is provided 
                                    in case none of the other specific inelastic codes
                                    are applicable or appropriate (e.g., energy or spin
                                    transfer reactions, projectile energy loss)
exci    Excitation                  Excitation from a lower to higher state of any
                                    fundamental reactant, e.g., electron-impact 
                                    excitation of an atom, photoexcitation of a 
                                    molecule to a higher ro-vibrational state
deex    De-excitation               Induced or spontaneous transition from a higher
                                    state to a lower state, e.g., vibrational
                                    de-excitation in atom-diatom scattering
ioni    Ionization                  Removal of an electron from any reactant
tran    Charge transfer             Transfer of an electron from one "center"
                                    (atomic ion, atom, molecule, etc.) to another
exch    Electron exchange           The exchange of an electron with another electron
                                    (most commonly in electron-impact processes)
reco    Recombination               Capture of an electron
                                    by an atomic or molecular ion,
                                    e.g., in dissociative recombination,
                                    dielectronic recombination,
                                    or radiative recombination
elat    Electron attachment         The formation of a negative ion by electron
                                    attachment
eldt    Electron detachment         The removal of the weakly bound electron of a 
                                    negative ion by photon impact or collision with 
                                    another particle such as an electron or surface
asso    Association                 Association of two (or more) reactants, typically 
                                    neutrals, collisionally, or radiatively
diss    Dissociation                The splitting of two (or more) reactants
                                    e.g., via electron-impact of a molecule, 
                                    photodissociation, molecular break-up on a surface
intr    Interchange                 The exchange of a heavy particle (atom, ion)
                                    in a reaction,
                                    e.g., :math:`D + H2 \rightarrow DH + H`
chem    Chemical reaction           The exchange of atoms or groups of atoms
                                    in chemical reactions,
                                    e.g., :math:`C + 2O \rightarrow CO2 + heat`
======  =====================   =======================================================


Particle Solid Interactions
-----------------------------
======  =====================   =====================================================================================
Code     Name                          Description
======  =====================   =====================================================================================
sore    Reflection              The elastic or inelastic reflection of a reactant from a surface
soem    Emission or erosion     Any form of erosion of a surface,
                                e.g., physical or chemical sputtering, etching, sublimation, emission of particle or
                                macroscopic pieces, desorption, secondary electron emission
sodp    Deposition              Absorption of particles by a surface, sticking, surface implantation
soch    Change                  Change of the composition or properties of a surface induced by any reactant
sope    Penetration             The penetration of a reactant into a solid, characterized by the 
                                change of energy, e.g., stopping, straggling, energy loss, range, 
                                charge state equilibrium, or 
                                change of  structure, e.g., trapping, diffusion, deep implantation

======  =====================   =====================================================================================


States class involved in process
------------------------------

======  =====================   =====================================================================================
Code     Name                          Description
======  =====================   =====================================================================================

rota    rotational process      characterizes processes involving rotationally excited states
vibr    vibrational process     characterizes processes involving vibrationally excited states
rvib    ro-vibrational process  characterizes processes involving ro-vibrationally excited states
hype    hyperfine process       characterizes processes involving hyperfine states
fine    fine process            characterizes processes involving fine states
tors    torsional process       characterizes processes involving torsionally excited states
rtor    ro-torsional process    characterizes processes involving ro-torsionally excited states

======  =====================   =====================================================================================


Combination of Processes
-----------------------------
The following table gives examples of the use of the fundamental process codes to describe 
more complex but still common processes. 
Some simply fall within the broad scope of one of the fundamental codes and others can be 
described by use of multiple codes.

==============================   ==============      ================================================================
Common Name                       Codes                 Description
==============================   ==============      ================================================================
Penning ionization                  asso + ioni         Association of atoms with ionization
Transfer ionization                 tran + ioni         Charge transfer between and ion and an atom,
                                                        for example, with ionization
Transfer excitation                 tran + exec         Charge transfer with excitation
Stripping                           ioni                Ionization of the projectile in a collision of an ion or atom
                                                        with an atom, molecule, or solid
Dissociative recombination          diss + reco         
Dielectronic  recombination         reco
Auger ionization                    exci + ioni
Spin-flip                           inel
photoionization                     ioni
Three-body recombination            reco
Superelastic scattering             inel
Surface catalysis                   sure + chem
Stark shift
Line broadening
Bremsstrahlung
Compton scattering
==============================   ==============      ================================================================


