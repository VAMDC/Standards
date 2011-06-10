.. _asymos:

==============================================================================================
Open-shell, asymmetric top molecules: asymos
==============================================================================================  


:math:`ElecStateLabel` 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``asymos:ElecStateLabel``  

:Attributes:   None. 

:Description:   ``ElecStateLabel`` is a label identifying the electronic state. 

:Restrictions:   * string.  


:math:`elecSym`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``asymos:elecSym``  

:Attributes:  ``group``: the symmetry group to which this species belongs.  

:Description:  ``elecSym`` is the symmetry species of the electronic wavefunction described by some symmetry group..  

:Restrictions:   * string.  


:math:`elecInv` 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``asymos:elecInv``  

:Attributes:   None. 

:Description:   ``elecInv`` is the parity of the electronic wavefunction with respect to inversion through the molecular centre of mass in the molecular coordinate system..  

:Restrictions:   * 'g' or 'u'.  


:math:`S`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``asymos:S``  

:Attributes:   None. 

:Description:   :math:`S` is the quantum number associated with the total electronic spin angular momentum, :math:`\boldsymbol{S}`.  

:Restrictions:   * non-negative integer or half-odd integer.  


:math:`v_i` 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``asymos:vi``  

:Attributes:   ``mode``: a positive integer, identifying the normal mode that this quantum number is associated with.  

:Description:   :math:`v_i` is the vibrational quantum number associated with the :math:`\nu_i` normal mode.  

:Restrictions:   * non-negative integer.  


:math:`vibInv`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``asymos:vibInv``  

:Attributes:   None. 

:Description:   ``vibInv`` is the parity of the vibrational wavefunction with respect to inversion through the molecular centre of mass in the molecular coordinate system..  

:Restrictions:   * 's' or 'a'.  


:math:`vibSym`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``asymos:vibSym``  

:Attributes:   ``group``: the symmetry group to which this species belongs.  

:Description:   ``vibSym`` is the symmetry species of the vibrational wavefunction, in some appropriate symmetry group.  

:Restrictions:   * string.  


:math:`J`   
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``asymos:J``  

:Attributes:   None. 

:Description:   :math:`J` is the quantum number associated with the total angular momentum excluding nuclear spin, :math:`\boldsymbol{J}`.  

:Restrictions:   * non-negative integer or half-odd integer.  


:math:`N` 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``asymos:N``  

:Attributes:   None. 

:Description:   :math:`N` is the quantum number associated with the total angular momentum excluding electronic and nuclear spin, N: :math:`\boldsymbol{J} = \boldsymbol{N} + \boldsymbol{S}`.  

:Restrictions:   * non-negative integer.  


:math:`K_a`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``asymos:Ka``  

:Attributes:   None. 

:Description:   :math:`K_a` is the rotational quantum label of an asymmetric top molecule, correlating to :math:`K` in the prolate symmetric top limit. 

:Restrictions:   * non-negative integer.  * :math:`K_a \le N`.  * :math:`K_a + K_c = N \;\mathrm{or}\;N + 1`.  


:math:`K_c`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``asymos:Kc``  

:Attributes:   None. 

:Description:   :math:`K_c` is the rotational quantum label of an asymmetric top molecule, correlating to :math:`K` in the oblate symmetric top limit. 

:Restrictions:   * non-negative integer.  * :math:`K_c \le N`.  * :math:`K_a + K_c = N \;\mathrm{or}\;N + 1`.  


:math:`rotSym`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``asymos:rotSym``  

:Attributes:   ``group``: the symmetry group to which this species belongs.  

:Description:   ``rotSym`` is the symmetry species of the rotational wavefunction, in some appropriate symmetry group.  

:Restrictions:   * string.  


:math:`I`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``asymos:I``  

:Attributes:  ``nuclearSpinRef``: a label identifying the group of nuclear spins coupled to one another to form a total nuclear spin angular momentum.  

:Description:  :math:`I` is the quantum number associated with the total nuclear spin angular momentum: :math:`\boldsymbol{I} = \boldsymbol{I_1} + \boldsymbol{I_2} + \cdots` where nuclei :math:`1, 2, \cdots` have individual nuclear spin angular momenta :math:`\boldsymbol{I_1}, \boldsymbol{I_2}, \cdots`.  

:Restrictions:   * non-negative integer or half-integer.  


:math:`F_j`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``asymos:Fj``  

:Attributes:   * ``nuclearSpinRef``: a label identifying the nuclear spin being coupled to   :math:`\boldsymbol{J}` or :math:`\boldsymbol{F_{j-1}}` to form an intermediate   angular momentum;  * :math:`j`: an integer label identifying the order of the hyperfine coupling  .  

:Description:   :math:`F_j` is the intermediate angular momentum quantum number associated with the coupling of the nuclear spin angular momentum of nucleus :math:`j` to the intermediate angular momentum: :math:`\boldsymbol{F_1} = \boldsymbol{J} + \boldsymbol{I_1}` or :math:`\boldsymbol{F_j} = \boldsymbol{F_{j-1}} + \boldsymbol{I_j}`; :math:`\boldsymbol{F_j}` is often not a good quantum number.  

:Restrictions:   * non-negative integer or half-integer.  


:math:`F`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``asymos:F``  

:Attributes:  ``nuclearSpinRef``: a label identifying the nuclear spin being coupled to :math:`\boldsymbol{J}` or :math:`\boldsymbol{F_j}` to form the total angular momentum.  

:Description:   :math:`F` is the quantum number associated with the total angular momentum including nuclear spin: :math:`\boldsymbol{F} = \boldsymbol{J} + \boldsymbol{I_1}` if only one such coupling is resolved, :math:`\boldsymbol{F} = \boldsymbol{F_{j-1}} + \boldsymbol{I_j}` if two or more such couplings are resolved.  

:Restrictions:   * non-negative integer or half-integer.  


:math:`r`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``asymos:r``  

:Attributes:   ``name``: a string identifying this ranking index.  

:Description:   :math:`r` is a named, positive integer label identifying the state if no other good quantum numbers or symmetries are known.  

:Restrictions:   * positive integer.  


:math:`parity`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

:Element:   ``asymos:parity``  

:Attributes:   None. 

:Description:   ``parity`` is the total parity: the parity of the total molecular wavefunction (excluding nuclear spin) with respect to inversion through the molecular centre of mass of all particles' coordinates in the laboratory coordinate system, the :math:`\hat{E}^*` operation.  

:Restrictions:   * ':math:`+`' or ':math:`-`'.