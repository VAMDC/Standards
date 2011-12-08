.. _caseByCase-reference-cases:

==============================================================================================
The Cases
==============================================================================================

The identified cases are described in the following section; some examples are given below. It should
be noted that the rovibronic states of different electronic states of a molecule
may be described using different cases. For example, the ground, :math:`X^2\Pi`
electronic state of :math:`\mathrm{NO}` may be described within the ``hunda``
case whereas the excited, :math:`A^2\Sigma^+` electronic state would be better
described using the ``hundb`` case. The electronic state is identified by its
single-letter spectroscopic symbol (:math:`X`, :math:`A`, :math:`a`, :math:`B`,
etc.)    There follows a list of the cases identified in version 0.2.1 of XSAMS
with some examples:    

0.  General case for arbitrary quantum numbers and symmetry (``gen``)
1.  :ref:`Diatomic closed shell <dcs>` (``dcs``): :math:`CO`, :math:`N_2`, :math:`NO^+`
2.  :ref:`Hund's case (a) diatomics <hunda>` (``hunda``): :math:`NO`, :math:`OH` [for low :math:`J`]
3.  :ref:`Hund's case (b) diatomics <hundb>` (``hundb``): :math:`O_2`, :math:`OH` [for high :math:`J`]
4.  :ref:`Closed-shell, linear triatomic molecules <ltcs>` (``ltcs``): :math:`CO_2`, :math:`HCN`
5.  :ref:`Closed-shell, non-linear triatomic molecules <nltcs>` (``nltcs``): :math:`H_2O`
6.  :ref:`Closed-shell, symmetric top molecules <stcs>` (``stcs``): :math:`NH_3`, :math:`CH_3Cl`
7.  :ref:`Closed-shell, linear, polyatomic molecules <lpcs>` (``lpcs``): :math:`C_2H_2`
8.  :ref:`Closed-shell, asymmetric top molecules <asymcs>` (``asymcs``): :math:`C_2H_4`
9.  :ref:`Open-shell, asymmetric top molecules <asymos>` (``asymos``): :math:`CH_3O`
10.  :ref:`Closed-shell, spherical top molecules <sphcs>` (``sphcs``): :math:`CH_4`, :math:`SF_6`
11.  :ref:`Open-shell, spherical top molecules <sphos>` (``sphos``)
12.  :ref:`Open-shell, linear triatomic molecules <ltos>` (``ltos``): :math:`CCH`
13.  :ref:`Open-shell, linear, polyatomic molecules <lpos>` (``lpos``): :math:`C_3H`, :math:`C_{10}H`
14.  :ref:`Open-shell, non-linear triatomic molecules <nltos>` (``nltos``): :math:`HO_2`, :math:`CH_2`

.. toctree::  
    :hidden:
 
    dcs
    hunda
    hundb
    ltcs
    nltcs
    stcs
    lpcs
    asymcs
    asymos
    sphcs
    sphos
    ltos
    lpos
    nltos