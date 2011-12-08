.. _nltcs:

==============================================================================================
Closed-shell, non-linear triatomics: nltcs
==============================================================================================


:math:`ElecStateLabel`   
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``nltcs:ElecStateLabel``  

:Attributes:   None. 

:Description:   ``ElecStateLabel`` is a label identifying the electronic state: :math:`X`, :math:`A`, :math:`a`, :math:`B`, etc..  

:Restrictions:   * string.  


:math:`v_1`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``nltcs:v1``  

:Attributes:   None. 

:Description:   :math:`v_1` is the vibrational quantum number associated with the :math:`\nu_1` normal mode.  

:Restrictions:   * non-negative integer.  


:math:`v_2`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``nltcs:v2``  

:Attributes:   None. 

:Description:   :math:`v_2` is the vibrational quantum number associated with the :math:`\nu_2` normal mode.  

:Restrictions:   * non-negative integer.  


:math:`v_3`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``nltcs:v3``  

:Attributes:   None. 

:Description:   :math:`v_3` is the vibrational quantum number associated with the :math:`\nu_3` normal mode.  

:Restrictions:   * non-negative integer.  


:math:`J`   
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``nltcs:J``  

:Attributes:   None.  

:Description:  :math:`J` is the quantum number associated with the total angular momentum excluding nuclear spin, :math:`\boldsymbol{J}`.  

:Restrictions:   * non-negative integer.  


:math:`K_a`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``nltcs:Ka``  

:Attributes:   None. 

:Description:   :math:`K_a` is the rotational quantum label of an asymmetric top molecule, correlating to :math:`K` in the prolate symmetric top limit. 

:Restrictions:   * non-negative integer.  * :math:`K_a \le J`.  * :math:`K_a + K_c = J \;\mathrm{or}\;J + 1`.  


:math:`K_c`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``nltcs:Kc``  

:Attributes:   None. 

:Description:   :math:`K_c` is the rotational quantum label of an asymmetric top molecule, correlating to :math:`K` in the oblate symmetric top limit. 

:Restrictions:   * non-negative integer.  * :math:`K_c \le J`.  * :math:`K_a + K_c = J \;\mathrm{or}\;J + 1`.  


:math:`F_1` 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``nltcs:F1``  

:Attributes:  ``nuclearSpinRef``: a label identifying the nuclear spin coupled to :math:`\boldsymbol{J}` to form the intermediate angular momentum.  

:Description:  :math:`F_1` is the intermediate angular momentum quantum number associated with the coupling of the rotational angular momentum and nuclear spin of nucleus 1 where two or more such couplings are resolved: :math:`\boldsymbol{F_1} = \boldsymbol{J} + \boldsymbol{I_1}`; :math:`F_1` is often not a good quantum number.  

:Restrictions:   * non-negative integer or half-integer.  * :math:`\|J - I_1\| \le F_1 \le J + I_1`.  


:math:`F_2` 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``nltcs:F2``  

:Attributes:  ``nuclearSpinRef``: a label identifying the nuclear spin coupled to :math:`\boldsymbol{F_1}` to form an intermediate angular momentum.  

:Description:  :math:`F_2` is the intermediate angular momentum quantum number associated with the coupling of the rotational angular momentum and nuclear spin of nucleus 2 where three such couplings are resolved: :math:`\boldsymbol{F_2} = \boldsymbol{F_1} + \boldsymbol{I_2}`; :math:`F_2` is often not a good quantum number.  

:Restrictions:   * non-negative integer or half-integer.  * :math:`\|F_1 - I_2\| \le F_2 \le F_1 + I_2`.  


:math:`F`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``nltcs:F``  

:Attributes:  ``nuclearSpinRef``: a label identifying the nuclear spin coupled to :math:`\boldsymbol{J}`, :math:`\boldsymbol{F_1}`, or :math:`\boldsymbol{F}` to form the total angular momentum.  

:Description:   :math:`F` is the quantum number associated with the total angular momentum including nuclear spin: :math:`\boldsymbol{F} = \boldsymbol{J} + \boldsymbol{I_1}` if only one hyperfine coupling is resolved, :math:`\boldsymbol{F} = \boldsymbol{F_1} + \boldsymbol{I_2}` if two couplings are resolved, or :math:`\boldsymbol{F} = \boldsymbol{F_2} + \boldsymbol{I_3}` if all three couplings are resolved. 

:Restrictions:   * non-negative integer or half-integer.  * :math:`\|F_2 - I_3\| \le F \le F_2 + I_3`.  


:math:`r`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``nltcs:r``  

:Attributes:   ``name``: a string identifying this ranking index.  

:Description:   :math:`r` is a named, positive integer label identifying the state if no other good quantum numbers or symmetries are known.  

:Restrictions:   * positive integer.  


:math:`parity`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

:Element:   ``nltcs:parity``  

:Attributes:   None. 

:Description:   ``parity`` is the total parity: the parity of the total molecular wavefunction (excluding nuclear spin) with respect to inversion through the molecular centre of mass of all particles' coordinates in the laboratory coordinate system, the :math:`\hat{E}^*` operation.  

:Restrictions:   * ':math:`+`' or ':math:`-`'.  


:math:`asSym`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``nltcs:asSym``  

:Attributes:   None. 

:Description:   ``asSym`` is the symmetry of the rovibronic wavefunction: 'a' or 's' such that the total wavefunction including nuclear spin is symmetric or antisymmetric with respect to permutation of the identical nuclei (:math:`\hat{P}_{12}`), according to whether they are bosons or fermions respectively.  

:Restrictions:   * 's' or 'a'.   