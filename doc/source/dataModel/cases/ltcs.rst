.. _ltcs:

==============================================================================================
Closed-shell, linear triatomic molecules: ltcs
==============================================================================================


:math:`ElecStateLabel` 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``ltcs:ElecStateLabel``  

:Attributes:   None. 

:Description:   ``ElecStateLabel`` is a label identifying the electronic state: :math:`X`, :math:`A`, :math:`a`, :math:`B`, etc..  

:Restrictions:   * string.  


:math:`v_1`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``ltcs:v1``  

:Attributes:   None. 

:Description:   :math:`v_1` is the vibrational quantum number associated with the :math:`\nu_1` normal mode.  

:Restrictions:   * non-negative integer.  


:math:`v_2`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``ltcs:v2``  

:Attributes:   None. 

:Description:   :math:`v_2` is the vibrational quantum number associated with the doubly-degenerate :math:`\nu_2` normal mode.  

:Restrictions:   * non-negative integer.  


:math:`l_2` 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``ltcs:l2``  

:Attributes:   None. 

:Description:   :math:`l_2` is the vibrational angular momentum quantum number associated with the degenerate bending vibration, :math:`\nu_2`; positive and negative values distinguish :math:`l`\ -type doubling components.  

:Restrictions:   * integer.  * :math:`\|l_2\| = v_2, v_2 - 2, \cdots, 1 \;\mathrm{or}\;0`.  


:math:`v_3`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``ltcs:v3``  

:Attributes:   None. 

:Description:   :math:`v_3` is the vibrational quantum number associated with the :math:`\nu_3` normal mode.  

:Restrictions:   * non-negative integer.  


:math:`J`   
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``ltcs:J``  

:Attributes:   None.  

:Description:  :math:`J` is the quantum number associated with the total angular momentum excluding nuclear spin, :math:`\boldsymbol{J}`.  

:Restrictions:   * non-negative integer.  


:math:`F_1`  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``ltcs:F1``  

:Attributes:  ``nuclearSpinRef``: a label identifying the nuclear spin coupled to :math:`\boldsymbol{J}` to form the intermediate angular momentum.  

:Description:  :math:`F_1` is the intermediate angular momentum quantum number associated with the coupling of the rotational angular momentum and nuclear spin of nucleus 1 where two or more such couplings are resolved: :math:`\boldsymbol{F_1} = \boldsymbol{J} + \boldsymbol{I_1}`; :math:`F_1` is often not a good quantum number.  

:Restrictions:   * non-negative integer or half-integer.  * :math:`\|J - I_1\| \le F_1 \le J + I_1`.  


:math:`F_2`  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``ltcs:F2``  

:Attributes:  ``nuclearSpinRef``: a label identifying the nuclear spin coupled to :math:`\boldsymbol{F_1}` to form an intermediate angular momentum.  

:Description:  :math:`F_2` is the intermediate angular momentum quantum number associated with the coupling of the rotational angular momentum and nuclear spin of nucleus 2 where three such couplings are resolved: :math:`\boldsymbol{F_2} = \boldsymbol{F_1} + \boldsymbol{I_2}`; :math:`F_2` is often not a good quantum number.  

:Restrictions:   * non-negative integer or half-integer.  * :math:`\|F_1 - I_2\| \le F_2 \le F_1 + I_2`.  


:math:`F`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``ltcs:F``  

:Attributes:   ``nuclearSpinRef``: a label identifying the nuclear spin coupled to :math:`\boldsymbol{J}`, :math:`\boldsymbol{F_1}`, or :math:`\boldsymbol{F}` to form the total angular momentum.  

:Description:   :math:`F` is the quantum number associated with the total angular momentum including nuclear spin: :math:`\boldsymbol{F} = \boldsymbol{J} + \boldsymbol{I_1}` if only one hyperfine coupling is resolved, :math:`\boldsymbol{F} = \boldsymbol{F_1} + \boldsymbol{I_2}` if two couplings are resolved, or :math:`\boldsymbol{F} = \boldsymbol{F_2} + \boldsymbol{I_3}` if all three couplings are resolved.  

:Restrictions:   * non-negative integer or half-integer.  * :math:`\|F_2 - I_3\| \le F \le F_2 + I_3`.  


:math:`r`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``ltcs:r``  

:Attributes:   ``name``: a string identifying this ranking index.  

:Description:   :math:`r` is a named, positive integer label identifying the state if no other good quantum numbers or symmetries are known.  

:Restrictions:   * positive integer.  


:math:`parity`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

:Element:   ``ltcs:parity``  

:Attributes:   None. 

:Description:   ``parity`` is the total parity: the parity of the total molecular wavefunction (excluding nuclear spin) with respect to inversion through the molecular centre of mass of all particles' coordinates in the laboratory coordinate system, the :math:`\hat{E}^*` operation.  

:Restrictions:   * ':math:`+`' or ':math:`-`'.  


:math:`kronigParity`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``ltcs:kronigParity``  

:Attributes:  None.  

:Restrictions:   * 'e' or 'f'.  


:math:`asSym`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``ltcs:asSym``  

:Attributes:   None. 

:Description:   ``asSym`` is (for linear molecules with a centre of inversion) the symmetry of the rovibronic wavefunction: 'a' or 's' such that the total wavefunction including nuclear spin is symmetric or antisymmetric with respect to permutation of the identical nuclei (:math:`\hat{P}_{12}`), according to whether they are bosons or fermions respectively.  

:Restrictions:   * 's' or 'a'. 