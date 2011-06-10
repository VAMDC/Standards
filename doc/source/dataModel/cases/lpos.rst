.. _lpos:

==============================================================================================
Open-shell, linear polyatomic molecules: lpos 
============================================================================================== 


:math:`ElecStateLabel`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""    

:Element:   ``lpos:ElecStateLabel``  

:Attributes:   None. 

:Description:   ``ElecStateLabel`` is a label identifying the electronic state. 

:Restrictions:   * string.  


:math:`elecInv`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``lpos:elecInv``  

:Attributes:   None. 

:Description:   ``elecInv`` is the parity of the electronic wavefunction with respect to inversion through the molecular centre of mass in the molecular coordinate system.  

:Restrictions:   * 'g' or 'u'.  


`:math:`elecRefl`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" `  

:Element:   ``lpos:elecRefl``  

:Attributes:   None. 

:Description:   ``elecRefl`` is the parity of the electronic wavefunction with respect to reflection in a plane containing the molecular symmetry axis in the molecular coordinate system (equivalent to inversion through the molecular centre of mass in the laboratory coordinate system).  

:Restrictions:   * ':math:`+`' or ':math:`-`'.  


:math:`S` 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

:Element:   ``lpos:S``  

:Attributes:   None.  

:Description:  :math:`S` is the quantum number associated with the total electronic spin angular momentum, :math:`\boldsymbol{S}`.  

:Restrictions:   * non-negative integer or half-odd integer.  


:math:`v_i`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``lpos:vi``  

:Attributes:   ``mode``: a positive integer, identifying the normal mode that this quantum number is associated with.  

:Description:   :math:`v_i` is the vibrational quantum number associated with the :math:`\nu_i` normal mode.  

:Restrictions:   * non-negative integer.  


:math:`l_i`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``lpos:li``  

:Attributes:   ``mode``: a positive integer, identifying the degenerate normal mode that this vibrational angular momentum quantum number is associated with.  

:Description:   :math:`l_i` is the vibrational angular momentum quantum number associated with the degenerate :math:`\nu_i` normal mode; positive and negative values distinguish :math:`l`\ -type doubling components; if two or more degenerate vibrations are excited, :math:`l_i` is only approximately defined (*i.e.* it is not a totally good quantum number) - see *e.g.* Herzerg II, p.212.  

:Restrictions:   * non-negative integer.  * :math:`\|l_i\| = v_i, v_i-2, \cdots, 1 \;\mathrm{or}\;0`.  


:math:`l` 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

:Element:   ``lpos:l``  

:Attributes:   None.  

:Description:  :math:`l` is the total vibrational angular momentum quantum number associated with resultant vibrational angular momentum about the internuclear axis. 

:Restrictions:   * non-negative integer.  


:math:`vibInv`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``lpos:vibInv``  

:Attributes:   None. 

:Description:   ``vibInv`` is the parity of the vibronic wavefunction with respect to inversion through the molecular centre of mass in the molecular coordinate system.  

:Restrictions:   * 'g' or 'u'.  


:math:`vibRefl`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``lpos:vibRefl``  

:Attributes:   None. 

:Description:   ``vibRefl`` is the parity of the vibronic wavefunction with respect to reflection in a plane containing the molecular symmetry axis in the molecular coordinate system.  

:Restrictions:   * ':math:`+`' or ':math:`-`'.  


:math:`J`   
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``lpos:J``  

:Attributes:   None.  

:Description:  :math:`J` is the quantum number associated with the total angular momentum excluding nuclear spin, :math:`\boldsymbol{J}`.  

:Restrictions:   * non-negative integer or half-odd integer.  * :math:`J \ge \|l\|`.  


:math:`N` 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

:Element:   ``lpos:N``  

:Attributes:   None.  

:Description:  :math:`N` is the quantum number associated with the total angular momentum excluding electronic and nuclear spin, N: :math:`\boldsymbol{J} = \boldsymbol{N} + \boldsymbol{S}`.  

:Restrictions:   * non-negative integer.  


:math:`I`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``lpos:I``  

:Attributes:   ``nuclearSpinRef``: a label, matching ``/Q.+/`` identifying the group of nuclear spins coupled to one another to form a total nuclear spin angular momentum.  

:Description:  :math:`I` is the quantum number associated with the total nuclear spin angular momentum: :math:`\boldsymbol{I} = \boldsymbol{I_1} + \boldsymbol{I_2} + \cdots` where nuclei :math:`1, 2, \cdots` have individual nuclear spin angular momenta :math:`\boldsymbol{I_1}, \boldsymbol{I_2}, \cdots`.  

:Restrictions:   * non-negative integer or half-integer.  


:math:`F_j`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``lpos:Fj``  

:Attributes:   * ``nuclearSpinRef``: a label identifying the nuclear spin being coupled to   :math:`\boldsymbol{J}` or :math:`\boldsymbol{F_{j-1}}` to form an intermediate   angular momentum;  * :math:`j`: an integer label identifying the order of the hyperfine coupling  .  

:Description:   :math:`F_j` is the intermediate angular momentum quantum number associated with the coupling of the nuclear spin angular momentum of nucleus :math:`j` to the intermediate angular momentum: :math:`\boldsymbol{F_1} = \boldsymbol{J} + \boldsymbol{I_1}` or :math:`\boldsymbol{F_j} = \boldsymbol{F_{j-1}} + \boldsymbol{I_j}`; :math:`\boldsymbol{F_j}` is often not a good quantum number.  

:Restrictions:   * non-negative integer or half-integer.  


:math:`F`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``lpos:F``  

:Attributes:   ``nuclearSpinRef``: a label, matching ``/Q.+/`` identifying the nuclear spin being coupled to :math:`\boldsymbol{J}` or :math:`\boldsymbol{F_j}` to form the total angular momentum.  

:Description:   :math:`F` is the quantum number associated with the total angular momentum including nuclear spin: :math:`\boldsymbol{F} = \boldsymbol{J} + \boldsymbol{I_1}` if only one such coupling is resolved, :math:`\boldsymbol{F} = \boldsymbol{F_{j-1}} + \boldsymbol{I_j}` if two or more such couplings are resolved.  

:Restrictions:   * non-negative integer or half-integer.  


:math:`r`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``lpos:r``  

:Attributes:   ``name``: a string identifying this ranking index.  

:Description:   :math:`r` is a named, positive integer label identifying the state if no other good quantum numbers or symmetries are known.  

:Restrictions:   * positive integer.  


:math:`parity`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

:Element:   ``lpos:parity``  

:Attributes:   None. 

:Description:   ``parity`` is the total parity: the parity of the total molecular wavefunction (excluding nuclear spin) with respect to inversion through the molecular centre of mass of all particles' coordinates in the laboratory coordinate system, the :math:`\hat{E}^*` operation.  

:Restrictions:   * ':math:`+`' or ':math:`-`'.  


:math:`kronigParity`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``lpos:kronigParity``  

:Attributes:  None.  

:Restrictions:   * 'e' or 'f'.  


:math:`asSym`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``lpos:asSym``  

:Attributes:   None. 

:Description:   ``asSym`` is (for linear molecules with a centre of inversion) the symmetry of the rovibronic wavefunction: 'a' or 's' such that the total wavefunction including nuclear spin is symmetric or antisymmetric with respect to permutation of the identical nuclei (:math:`\hat{P}_{12}`), according to whether they are bosons or fermions respectively.  

:Restrictions:   * 's' or 'a'.