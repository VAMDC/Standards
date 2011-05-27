.. _Species: 

Species
==========

	.. image:: images/Species.png

	Species branch of XSAMS, having four child elements, is used to represent the static properties
	of species, used in spectroscopy.
	
	:ref:`Atoms`, :ref:`Molecules`, :ref:`Particles`, :ref:`Solids` elements are defined, each 
	describing the corresponding kind of species. 
	**Atoms** and **Molecules** may be identified by **speciesID**  attribute, even if no state information is available,
	and all four kinds can be referenced by the **stateID** (:ref:`StateIDType`) attribute. In this case, for **Atoms** and **Molecules**,
	at least a dummy ground state needs to be created.
