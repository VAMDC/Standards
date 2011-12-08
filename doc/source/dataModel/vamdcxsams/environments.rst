.. _Environments:

Environments
===============

	**Environments** branch of the schema allows to describe the environment that is important
	for example for transition line profile broadening or shifting.
	
	.. image:: images/environments/environments.png
	
.. _Environment:

Environment
----------------

	Each **Environment** element may be used to describe a mixture of gases in thermodynamical equilibrium,
	characterized by the temperature, total pressure and composition.
	
	.. image:: images/environments/environment.png

	Extending :ref:`PrimaryType`, **environment** has following attributes and child elements defned:
	
	*	mandatory **envID** attribute of type :ref:`EnvironmentIDType`
	*	optional **Temperature** element of type :ref:`DataType`
	*	optional **TotalPressure** element of type :ref:`DataType`
	*	optional **TotalNumberDensity** element of type :ref:`DataType`
	*	optional **Composition** element of type **CompositionType**,
		defined as a list, containing at least one of the **Species** elements.
		
	.. image:: images/environments/composition_species.png
	
	Each of the **Species** elements may be defined by either **name** attribute, containing arbitrary name,
	or **speciesRef** attribute pointing to a complete description of a component in the :ref:`Species` branch 
	of XSAMS.
	
	For each of the **Species** one of **PartialPressure**, **MoleFraction** or **Concentration** elements, 
	each of the :ref:`DataType`, must be defined.