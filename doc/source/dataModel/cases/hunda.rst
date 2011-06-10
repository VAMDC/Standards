.. _hunda:

==============================================================================================
Hund's case (a) diatomics: hunda
==============================================================================================

:math:`ElecStateLabel`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:Element:   ``hunda:ElecStateLabel``
:Attributes:   None.  
:Description:  ``ElecStateLabel`` is a label identifying the electronic state: :math:`X`, :math:`A`, :math:`a`, :math:`B`, etc..  
:Restrictions:   * string. 

:math:`elecInv`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:Element:   ``hunda:elecInv``
:Attributes:   None.
:Description:   ``elecInv`` is the parity of the electronic wavefunction with respect to inversion through the molecular centre of mass in the molecular coordinate system.
:Restrictions:   * 'g' or 'u'. 

:math:`elecRefl`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hunda:elecRefl`` 
:Attributes:   None. 
:Description:   ``elecRefl`` is the parity of the electronic wavefunction with respect to reflection in a plane containing the molecular symmetry axis in the molecular coordinate system (equivalent to inversion through the molecular centre of mass in the laboratory coordinate system). 
:Restrictions:   * ':math:`+`' or ':math:`-`'.  


:math:`\|\mathit{\Lambda}\|`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hunda:Lambda`` 

:Attributes:   None.  

:Description:   :math:`\|\mathit{\Lambda}\|` is the quantum number associated with the magnitude of the projection of the total electronic orbital angular momentum, :math:`\boldsymbol{L}`, onto the molecular axis. 

:Restrictions:   * non-negative integer.  


:math:`\|\mathit{\Sigma}\|`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hunda:Sigma`` 

:Attributes:   None.  

:Description:   :math:`\|\mathit{\Sigma}\|` is the quantum number associated with the magnitude of the projection of :math:`\boldsymbol{S}` onto the molecular axis.  

:Restrictions:   * non-negative integer or half-odd integer.  * :math:`\|\mathit{\Sigma}\| = S, S-1, \cdots, \frac{1}{2}\;\mathrm{or}\;0`.  


:math:`\mathit{\Omega}`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hunda:Omega``  

:Attributes:  None.  

:Description:   :math:`\mathit{\Omega}` is the quantum number associated with the projection of the total angular momentum (excluding nuclear spin), :math:`\boldsymbol{J}`, onto the molecular axis: :math:`\mathit{\Omega} = \|\mathit{\Lambda} + \mathit{\Sigma}\|` (or :math:`\mathit{\Omega} = \|\mathit{\Lambda}\| + \mathit{\Sigma}` if :math:`S > \|\mathit{\Lambda}\| > 0`).  

:Restrictions:   * non-negative integer or half-integer.  * :math:`\|\mathit{\Omega}\| \le J`.  


:math:`S` 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hunda:S``  

:Attributes:   None.  

:Description:  :math:`S` is the quantum number associated with the total electronic spin angular momentum, :math:`\boldsymbol{S}`.  

:Restrictions:   * non-negative integer or half-odd integer.  


:math:`v`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``hunda:v``  

:Attributes:   None.  

:Description:  :math:`v` is the vibrational quantum number.  

:Restrictions:   * non-negative integer.  


:math:`J`   
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``hunda:J``  

:Attributes:   None.  

:Description:  :math:`J` is the quantum number associated with the total angular momentum excluding nuclear spin: :math:`\boldsymbol{J}=\boldsymbol{L}+\boldsymbol{S}+\boldsymbol{R}`. 

:Restrictions:   * non-negative integer or half-odd integer.  


:math:`F_1`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hunda:F1``  

:Attributes:  ``nuclearSpinRef``: a label identifying the nuclear spin coupled to :math:`\boldsymbol{J}` to form the intermediate angular momentum.  

:Description:  :math:`F_1` is the intermediate angular momentum quantum number associated with the coupling of the rotational angular momentum and nuclear spin of nucleus 1 where two such couplings are resolved: :math:`\boldsymbol{F_1} = \boldsymbol{J} + \boldsymbol{I_1}`; :math:`F_1` is often not a good quantum number. 

:Restrictions:   * non-negative integer or half-integer.  * :math:`\|J - I_1\| \le F_1 \le J + I_1`.  


:math:`F`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``hunda:F``  

:Attributes:  ``nuclearSpinRef``: a label identifying the nuclear spin coupled to :math:`\boldsymbol{J}` (or :math:`\boldsymbol{F_1}`) to form the total angular momentum.  

:Description:   :math:`F` is the quantum number associated with the total angular momentum including nuclear spin: :math:`\boldsymbol{F} = \boldsymbol{J} + \boldsymbol{I_1}` if only one such coupling is resolved; :math:`\boldsymbol{F} = \boldsymbol{F_1} + \boldsymbol{I_2}` if both couplings are resolved.  

:Restrictions:   * non-negative integer or half-integer.  


:math:`r`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hunda:r``  

:Attributes:   ``name``: a string identifying this ranking index.  

:Description:   :math:`r` is a named, positive integer label identifying the state if no other good quantum numbers or symmetries are known.  

:Restrictions:   * positive integer.  


:math:`parity`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

:Element:   ``hunda:parity``  

:Attributes:   None. 

:Description:   ``parity`` is the total parity: the parity of the total molecular wavefunction (excluding nuclear spin) with respect to inversion through the molecular centre of mass of all particles' coordinates in the laboratory coordinate system, the :math:`\hat{E}^*` operation.  

:Restrictions:   * ':math:`+`' or ':math:`-`'.  


:math:`kronigParity`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``hunda:kronigParity``  

:Attributes:  None.  * 'e' or 'f'.  


:math:`asSym`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``hunda:asSym``  

:Attributes:   None. 

:Description:   ``asSym`` is (for diatomic molecules with a centre of inversion) the symmetry of the rovibronic wavefunction: 'a' or 's' such that the total wavefunction including nuclear spin is symmetric or antisymmetric with respect to permutation of the identical nuclei (:math:`\hat{P}_{12}`), according to whether they are bosons or fermions respectively.  

:Restrictions:   * 's' or 'a'.  