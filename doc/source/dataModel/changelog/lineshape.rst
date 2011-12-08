.. _lineshapes:

Radiative lineshapes, broadening and shifting
=======================================================

	**Radiative** element now has, among all other, two new elements, called :ref:`Broadening` and :ref:`Shifting`
	Those elements may be specified more than once to represent different broadening/shifting processes.
	
	.. image:: ./RadiativeTransition.png
		:alt:	RadiativeTransition child elements
		
	

.. _Broadening:

Broadening
-----------------

	.. image:: lineshape/Broadening.png
		:alt:	Broadening element
	
	Each broadening element has 
	
	-	**name** attribute, that must contain one of the names from :ref:`lineshape_dictionary`
	
	-	**envRef** attribute, referencing the specific environment conditions, 
		for example, for collisional broadening.
	
	-	one or more :ref:`lineshape` elements, with their respective parameters.
	
	Normally, one broadening record should be created for each broadening mechanism 
	and for each source (data origin).
	Many Lineshape elements allow to represent, for example, 
	processing of the same experimental data with different lineshapes. 
	Usually, there will be only one Lineshape element.
	
.. _lineshape:

Lineshape
```````````````````	
	.. image:: lineshape/LineShape.png
		:alt:	Lineshape element exploded
	
	**Lineshape** in turn also has 
	
	-	optional **name** attribute from :ref:`lineshape_dictionary`, like Lorentz, Voigt, Doppler, etc.
	
	-	optional **functionRef** attribute of type **FunctionRefType**, with a reference to a function 
		describing the lineshape. This attribute should be used only in case when the lineshape 
		used in data fitting is absent in the :ref:`lineshape_dictionary`
	
	-	one or more :ref:`lineshape_parameter`, each representing specific lineshape parameter 
		as either a constant value or a function of environment parameters
	
.. _lineshape_parameter:

LineshapeParameter
```````````````````````
	
	.. image:: lineshape/LineShapeParameter.png
		:alt:	LineshapeParameter element exploded
	
	**LineshapeParameter**
		either **FitParameters** or **Value**/**Accuracy** pair must be specified
	
	- **name** attribute corresponds to one defined in :ref:`lineshape_dictionary` for specific lineshape
	
	- **Value**
	
	- **FitParameters** allows representation of this parameter as a function of environment parameters, for example::
	
		<Broadening envRef="Eair-broadening-ref-env" name="pressure">
			<Lineshape name="Lorentzian">
				<Comments>The temperature-dependent pressure broadening 
				Lorentzian lineshape</Comments>
				<LineshapeParameter name="gammaL">
					<FitParameters functionRef="FgammaL">
						<FitArgument units="K" name="T">
							<LowerLimit>240</LowerLimit>
							<UpperLimit>350</UpperLimit>
						</FitArgument>
						<FitArgument units="atm" name="p">
							<LowerLimit>0.</LowerLimit>
							<UpperLimit>1.2</UpperLimit>
						</FitArgument>
						<FitParameter name="gammaL_ref">
							<SourceRef>BHIT-B_HITRAN2008</SourceRef>
							<Value units="1/cm">0.0635</Value>
							<Accuracy>0.003175</Accuracy>
						</FitParameter>
						<FitParameter name="n">
							<SourceRef>BHIT-B_HITRAN2008</SourceRef>
							<Value units="unitless">0.75</Value>
							<Accuracy>0.15</Accuracy>
						</FitParameter>
					</FitParameters>
				</LineshapeParameter>
			</Lineshape>
		</Broadening>
	
	Where function FgammaL is defined as follows::
	
		<Function functionID="FgammaL">
			<Comments>This function gives the pressure- and 
			temperature-dependence of the Lorentzian component of the 
			pressure-broadened line width (HWHM)</Comments>
			<Expression computerLanguage="Fortran">
				gammaL_ref * p * (296./T)**n
			</Expression>
			<Y name="gammaL" units="1/cm"/>
			<Arguments>
				<Argument name="T" units="K">
					<Description>The absolute temperature, in K</Description>
				</Argument>
				<Argument name="p" units="atm">
					<Description>The partial pressure of the broadening species,
									in atm</Description>
				</Argument>
			</Arguments>
			<Parameters>
				<Parameter name="gammaL_ref" units="1/cm">
					<Description>The Lorentzian HWHM of the line, broadened at
						Tref = 296 K and broadening species partial pressure
						pref = 1atm</Description>
				</Parameter>
				<Parameter name="n" units="unitless">
					<Description>
						The temperature exponent of the gammaL function
					</Description>
				</Parameter>
			</Parameters>
		</Function>
	

.. _Shifting:

Shifting
-----------------

	.. image:: lineshape/Shifting.png
		:alt:	Shifting element exploded
		
	Line shifting is defined by **name** and/or **envRef** attributes. 
	In case of linear collisional shifting, only environment is sufficient.
	
	**ShiftingParameter** element is defined the same way as broadening :ref:`lineshape_parameter`, 
	it is either value or function of environment parameters.
	
	Example of a Shifting definition::
	
		<Shifting envRef="Eair-broadening-ref-env">
			<ShiftingParameter name="delta">
				<FitParameters functionRef="Fdelta">
					<FitArgument name="p" units="atm">
						<LowerLimit>0.</LowerLimit>
						<UpperLimit>1.2</UpperLimit>
					</FitArgument>
					<FitParameter name="delta_ref">
						<SourceRef>BHIT-B_HITRAN2008</SourceRef>
						<Value units="unitless">-0.001</Value>
						<Accuracy>0.1</Accuracy>
					</FitParameter>
				</FitParameters>
			</ShiftingParameter>
		</Shifting>
	
	
