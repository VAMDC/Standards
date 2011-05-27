.. _Particles:

Species.Particles
========================

	Describes a number of *elementary* particles, namely, **electron**, **photon**,
	**muon**, and **positron**, if such a description is essential for a particular
	process. An example can be provided by photoionization.

.. _Particle:

Particle
----------------	

	.. image:: images/particles/Particles.png

	If a particle is needed in some of the processes,
	then it must have a **stateID** (:ref:`StateIDType`) identifier to enable referencing it.
	The attribute **name** of the type is optional.
	It is defined as a restriction of String, that may take following values:
	
	*	photon
	*	electron
	*	muon
	*	positron

	Other particle names may be added in future versions, based on schema users requests.
	
	**ParticleProperties** XML element may contain some static properties of the particle:
	
	.. image:: images/particles/ParticleProperties.png

	*	**ParticleCharge** integer element,
	*	**ParticleMass** element of :ref:`DataType`,
	*	**ParticleSpin** (type :ref:`AngularMomentumType`), and 
	*	**ParticlePolarization** element (type :ref:`AngularMomentumProjectionType`).