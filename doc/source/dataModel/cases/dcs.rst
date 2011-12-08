.. _dcs:

==============================================================================================
Diatomic closed-shell molecules: dcs
==============================================================================================

:math:`ElectStateLabel` 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
 
:Element: ``dcs:ElecStateLabel``  

:Attributes:  None.  

:Description: ``ElecStateLabel`` is a label identifying the electronic state: :math:`X`, :math:`A`, :math:`a`, :math:`B`, etc.. 

:Restrictions:     * string.  

:math:`v`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:  ``dcs:v``
   
:Attributes:    None. 
  
:Description:   :math:`v` is the vibrational quantum number. 
  
:Restrictions:     * non-negative integer.       

:math:`J`   
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:  ``dcs:J``   
:Attributes:  None.   
:Description: :math:`J` is the quantum number associated with the total angular momentum excluding nuclear spin, :math:`\boldsymbol{J}`.   
:Restrictions:     * non-negative integer.  

:math:`F_1`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:Element:  ``dcs:F1``   
:Attributes:     ``nuclearSpinRef``: a label identifying the nuclear spin coupled to     :math:`\boldsymbol{J}` to form the intermediate angular momentum.  
:Description:      :math:`F_1` is the intermediate angular momentum quantum number associated with the coupling of the rotational angular momentum and nuclear spin of nucleus 1 where two such couplings are resolved: :math:`\boldsymbol{F_1} = \boldsymbol{J} + \boldsymbol{I_1}`; :math:`F_1` is often not a good quantum number. :Restrictions:     
    * non-negative integer or half-integer.     
    * :math:`\|J - I_1\| \le F_1 \le J + I_1`.  
    
:math:`F`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:Element:   ``dcs:F``  
:Attributes:   ``nuclearSpinRef``: a label identifying the nuclear spin coupled to :math:`\boldsymbol{J}` (or     :math:`\boldsymbol{F_1}`) to form the total angular momentum.  
:Description:      :math:`F` is the quantum number associated with the total angular momentum including nuclear spin: :math:`\boldsymbol{F} = \boldsymbol{J} + \boldsymbol{I_1}` if only one such coupling is resolved, :math:`\boldsymbol{F} = \boldsymbol{F_1} + \boldsymbol{I_2}` if both couplings are resolved. 
:Restrictions:      * non-negative integer or half-integer.  

:math:`r`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:Element:   ``dcs:r``  
:Attributes:   ``name``: a string identifying this ranking index. 
:Description:   :math:`r` is a named, positive integer label identifying the state if no other good quantum numbers or symmetries are known.  
:Restrictions:   * positive integer.

:math:`parity`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:Element:   ``dcs:parity``  
:Attributes:   None. 
:Description:   ``parity`` is the total parity: the parity of the total molecular wavefunction (excluding nuclear spin) with respect to inversion through the molecular centre of mass of all particles' coordinates in the laboratory coordinate system, the :math:`\hat{E}^*` operation.  
:Restrictions:   * ':math:`+`' or ':math:`-`'.  

:math:`asSym`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:Element:   ``dcs:asSym``  
:Attributes:   None. 
:Description:   ``asSym`` is (for diatomic molecules with a centre of inversion) the symmetry of the rovibronic wavefunction: 'a' or 's' such that the total wavefunction including nuclear spin is symmetric or antisymmetric with respect to permutation of the identical nuclei (:math:`\hat{P}_{12}`), according to whether they are bosons or fermions respectively.  
:Restrictions:   * 's' or 'a'.   
