.. _hundb:

==============================================================================================
Hund's case (b) diatomics: hundb
==============================================================================================


:math:`ElecStateLabel`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hundb:ElecStateLabel``  

:Attributes:   None.  

:Description:  ``ElecStateLabel`` is a label identifying the electronic state: :math:`X`, :math:`A`, :math:`a`, :math:`B`, etc..  

:Restrictions:   * string.  


:math:`elecInv`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hundb:elecInv``  

:Attributes:   None. 

:Description:   ``elecInv`` is the parity of the electronic wavefunction with respect to inversion through the molecular centre of mass in the molecular coordinate system.  

:Restrictions:   * 'g' or 'u'.  


`:math:`elecRefl`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" `  

:Element:   ``hundb:elecRefl``  

:Attributes:   None. 

:Description:   ``elecRefl`` is the parity of the electronic wavefunction with respect to reflection in a plane containing the molecular symmetry axis in the molecular coordinate system (equivalent to inversion through the molecular centre of mass in the laboratory coordinate system).  

:Restrictions:   * ':math:`+`' or ':math:`-`'.  


:math:`\|\mathit{\Lambda}\|`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hundb:Lambda`` 

:Attributes:   None.  

:Description:   :math:`\|\mathit{\Lambda}\|` is the quantum number associated with the magnitude of the projection of the total electronic orbital angular momentum, :math:`\boldsymbol{L}`, onto the molecular axis. 

:Restrictions:   * non-negative integer.  


:math:`S`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hundb:S``  

:Attributes:   None.  

:Description:  :math:`S` is the quantum number associated with the total electronic spin angular momentum, :math:`\boldsymbol{S}`.  

:Restrictions:   * non-negative integer or half-odd integer.  


:math:`v`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``hundb:v``  

:Attributes:   None.  

:Description:  :math:`v` is the vibrational quantum number.  

:Restrictions:   * non-negative integer.  


:math:`J`   
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``hundb:J``  

:Attributes:   None.  

:Description:  :math:`J` is the quantum number associated with the total angular momentum excluding nuclear spin: :math:`\boldsymbol{J} = \boldsymbol{N} + \boldsymbol{S} = \boldsymbol{L} + \boldsymbol{S} + \boldsymbol{R}`.  

:Restrictions:   * non-negative integer or half-integer.  * :math:`\|N - S\| \le J \le N + S`.  


:math:`N`  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hundb:N``  

:Attributes:   None.  

:Description:  :math:`N` is the quantum number associated with the total angular momentum excluding electronic and nuclear spin, :math:`\boldsymbol{N}`: :math:`\boldsymbol{J} = \boldsymbol{N} + \boldsymbol{S}`.  

:Restrictions:   * non-negative integer.  * :math:`N \ge \|\mathit{\Lambda}\|`.  


:math:`SpinComponentLabel` 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hundb:SpinComponentLabel`` 

:Attributes:   None.  

:Description:   ``SpinComponentLabel`` is the positive integer identifying the spin-component label, :math:`F_x`, where :math:`x = 1,2,3, \cdots` in order of increasing energy for a given value of :math:`J` - see Herzberg, *Spectra of Diatomic Molecules*, Van Nostrand, Princeton, N.J., 1950. 

:Restrictions:   * positive integer.  


:math:`F_1`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hundb:F1``  

:Attributes:  ``nuclearSpinRef``: a label identifying the nuclear spin coupled to :math:`\boldsymbol{J}` to form the intermediate angular momentum.  

:Description:  :math:`F_1` is the intermediate angular momentum quantum number associated with the coupling of the rotational angular momentum and nuclear spin of nucleus 1 where two such couplings are resolved: :math:`\boldsymbol{F_1} = \boldsymbol{J} + \boldsymbol{I_1}`; :math:`F_1` is often not a good quantum number. 

:Restrictions:   
    * non-negative integer or half-integer.  
    * :math:`\|J - I_1\| \le F_1 \le J + I_1`.  


:math:`F`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``hundb:F``  

:Attributes:  ``nuclearSpinRef``: a label identifying the nuclear spin coupled to :math:`\boldsymbol{J}` (or :math:`\boldsymbol{F_1}`) to form the total angular momentum.  

:Description:   :math:`F` is the quantum number associated with the total angular momentum including nuclear spin: :math:`\boldsymbol{F} = \boldsymbol{J} + \boldsymbol{I_1}` if only one such coupling is resolved; :math:`\boldsymbol{F} = \boldsymbol{F_1} + \boldsymbol{I_2}` if both couplings are resolved.  

:Restrictions:   * non-negative integer or half-integer.  


:math:`r`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

:Element:   ``hundb:r``  

:Attributes:   ``name``: a string identifying this ranking index.  

:Description:   :math:`r` is a named, positive integer label identifying the state if no other good quantum numbers or symmetries are known.  

:Restrictions:   * positive integer.  


:math:`parity`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

:Element:   ``hundb:parity``  

:Attributes:   None. 

:Description:   ``parity`` is the total parity: the parity of the total molecular wavefunction (excluding nuclear spin) with respect to inversion through the molecular centre of mass of all particles' coordinates in the laboratory coordinate system, the :math:`\hat{E}^*` operation.  

:Restrictions:   * ':math:`+`' or ':math:`-`'.  


:math:`kronigParity`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``hundb:kronigParity``  

:Attributes:  None.  

:Restrictions:   * 'e' or 'f'.  


:math:`asSym`  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

:Element:   ``hundb:asSym``  

:Attributes:   None. 

:Description:   ``asSym`` is (for diatomic molecules with a centre of inversion) the symmetry of the rovibronic wavefunction: 'a' or 's' such that the total wavefunction including nuclear spin is symmetric or antisymmetric with respect to permutation of the identical nuclei (:math:`\hat{P}_{12}`), according to whether they are bosons or fermions respectively.  

:Restrictions:   * 's' or 'a'. 