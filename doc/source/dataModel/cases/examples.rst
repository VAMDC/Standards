.. _caseByCase-reference-examples:

==============================================================================================
Examples
============================================================================================== 

The element ``<case:QNs>`` should be placed
within the XSAMS element ``MolecularState`` (although this cannot be enforced
using NVDL). Some examples follow.    

Example 1: a rovibrational state of :math:`CO`
-------------------------------------------------------------------------------

The :math:`v=0, J=1` state of the ground electronic state of CO has the
following representation in the 'case-by-case' formulism:     ::

   <dcs:QNs>
      <dcs:ElecStateLabel>X</dcs:ElecStateLabel>
      <dcs:v>1</dcs:v>
      <dcs:J>0</dcs:J>
   </dcs:QNs>

Example 2: a rovibrational state of :math:`\mathrm{NH_3}` 
-------------------------------------------------------------------------------

The :math:`J=22, K=10` rotational state of the :math:`(1,0^+,0^0,2^2)` vibrational level of
:math:`\mathrm{NH_3}` could be represented by the following XML:     ::

   <stcs:QNs>
      <stcs:ElecStateLabel>X</stcs:ElecStateLabel>
      <stcs:vi mode="1">1</stcs:vi>
      <stcs:vi mode="2">0</stcs:vi>
      <stcs:vi mode="3">0</stcs:vi>
      <stcs:vi mode="4">2</stcs:vi>
      <stcs:li mode="3">0</stcs:li>
      <stcs:li mode="4">2</stcs:li>
      <stcs:vibInv>s</stcs:vibInv>
      <stcs:vibSym>E</stcs:vibSym>
      <stcs:J>20</stcs:J>
      <stcs:K>10</stcs:K>
   </stcs:QNs>

Example 3: two states of different electronic states of :math:`MgH`    
-------------------------------------------------------------------------------

This example shows two states of the MgH radical, using different cases for the
:math:`X^2\Sigma^+` and :math:`A^2\Pi` electronic states:     ::

   <MolecularState stateID="S1-MgH-1">
     <Description>
       A state in the ground electronic state, X(2Sigma+), of MgH
     </Description>
     <MolecularStateCharacterisation>
       <StateEnergy energyOrigin="Zero-point from calculation based on N^2 Hamiltonian">
         <Value units="1/cm">0.</Value>
       </StateEnergy>
       <TotalStatisticalWeight>4</TotalStatisticalWeight>
     </MolecularStateCharacterisation>
     <hundb:QNs>
       <hundb:ElecStateLabel>X</hundb:ElecStateLabel>
       <hundb:Lambda>0</hundb:Lambda>
       <hundb:S>0.5</hundb:S>
       <hundb:v>0</hundb:v>
       <hundb:J>0.5</hundb:J>
       <hundb:N>0</hundb:N>
       <hundb:SpinComponentLabel>1</hundb:SpinComponentLabel>
       <hundb:parity>+</hundb:parity>
       <hundb:kronigParity>e</hundb:kronigParity>
     </hundb:QNs>
   </MolecularState>
     ...
   <MolecularState stateID="S1001-MgH-1">
     <Description>
       A state in the first excited electronic state, A(2Pi) of MgH
     </Description>
     <MolecularStateCharacterisation>
       <StateEnergy energyOrigin="Zero-point of electronic ground state">
         <Value units="1/cm">19273.2694</Value>
       </StateEnergy>
       <TotalStatisticalWeight>4</TotalStatisticalWeight>
     </MolecularStateCharacterisation>
     <hunda:QNs>
       <hunda:ElecStateLabel>A</hunda:ElecStateLabel>
       <hunda:Lambda>1</hunda:Lambda>
       <hunda:Omega>0.5</hunda:Omega>
       <hunda:S>0.5</hunda:S>
       <hunda:v>0</hunda:v>
       <hunda:J>0.5</hunda:J>
       <hunda:parity>-</hunda:parity>
       <hunda:kronigParity>f</hunda:kronigParity>
     </hunda:QNs>
   </MolecularState>