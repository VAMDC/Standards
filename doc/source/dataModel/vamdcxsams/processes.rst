.. _Processes:

Processes
==============

	.. image:: images/Processes.png
	
	Process branch of XSAMS allows the description of processes:
	:ref:`RadiativeTransition` and :ref:`NonRadiativeTransition`,
	:ref:`AbsorptionCrossSection`, :ref:`Collisions`
	
	Each of the processes has some data quantities and references to
	involved species and states through **SpeciesRef** and **[Upper|Lower]StateRef**
	containing the same value as corresponding **SpeciesID** and **StateID** attributes.
	