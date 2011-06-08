.. _crossection:

Absorption cross-sections
=======================================

	Among with **RadiativeTransition** elements, **Radiative** processes block now has a **CrossSection** element,
	which allows description of
	absorption cross-section data and vibrational bands assignment in case of complex molecules.
	
	
	.. image:: crosssection/CrossSection.png
		:alt:	RadiativeTransition child elements
		
	-	**Description**, **X** and **Y** elements describe cross-section data in tabular form, 
		where X can be absorbed radiation frequency, wavelength or wavenumber in a form of a list of values or sequence.
		Y then represents a sequence of sigma values.
	
	- 	**Species** element may have **StateRef** and/or **SpeciesRef** child elements, indicating species or specific states,
		to which crossection data applies.
	
	-	**BandAssignment** allows to indicate specific vibrational modes in cross-section data.
	
	.. image:: crosssection/BandAssignment.png
		:alt:	CrossSection BandAssignment element
		
		
Example cross-sections record
``````````````````````````````````
	
	*Warning:* **DataList** is truncated for clarity, originally it contains 880 space-separated numbers.
	You may see the original element in schema examples (*tests/valid/azulene-working.xml*).
	
	::

		<CrossSection>
			<SourceRef>B_NIST1</SourceRef>
			
			<Description>The IR transmittance cross section of azulene from the NIST 
			Standard Reference Data Program Collection</Description>
			
			<X parameter="wavenumber" units="1/cm">
				<LinearSequence n="880" units="1/cm" a0="450." a1="4"/>
			</X>
			<Y parameter="sigma" units="arbitrary">
				<DataList n="880">
					0 85 94 .. 102
				</DataList>    
			</Y>
			
			<Species>
				<SpeciesRef>X-CUFNKYGDVFVPHO-UHFFFAOYAT</SpeciesRef>
				<StateRef>SX_Azulene-1</StateRef>
			</Species>
			
			<BandAssignment name="2v1+v2">
				<BandCentre>
					<Value units="1/cm">410</Value>
					<Accuracy>2</Accuracy>
				</BandCentre>
				<BandWidth>
					<Value units="1/cm">40</Value>
					<Accuracy>5</Accuracy>
				</BandWidth>
				<Modes>
					<DeltaV modeID="V1">2</DeltaV>
					<DeltaV modeID="V2">1</DeltaV>
				</Modes>
			</BandAssignment>
			<BandAssignment name="3v4+2v5">
				<BandCentre>
					<Value units="1/cm">1657</Value>
					<Accuracy>10</Accuracy>
				</BandCentre>
				<BandWidth>
					<Value units="1/cm">120</Value>
					<Accuracy>15.5</Accuracy>
				</BandWidth>
				<Modes>
					<DeltaV modeID="V2">3</DeltaV>
					<DeltaV modeID="V3">2</DeltaV>
				</Modes>
			</BandAssignment>
			
		</CrossSection>
		
