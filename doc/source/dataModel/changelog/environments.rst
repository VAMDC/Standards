.. _environments:

Environments
============================================


XSAMS environments section was first introduced to VAMDC-XSAMS,
along with radiative transition line shiftings and broadenings.
Currently environments are only used to describe broadening and shifting environment conditions.

	.. image:: ./XSAMSData.png

Environment
-----------------------


Each environment is fully described by a single **Environment** element of type **EnvironmentType**

	.. image:: environments/environmentsType.png
		:alt: environmentType elements and attributes

	Environment element extends primary type, so reference and method data may be specified.
	
	Environment branch has the following elements and attributes:
	
	-	mandatory **envID** attribute. 
		The string identifier starting from letter E, to be referenced from radiative transitions.
	
	-	optional **Comments** element, derived from PrimaryType.
		It is useful to put verbose environment description there.
	
	-	optional **Temperature** element of type DataType.
	
	-	optional **TotalPressure** element of type DataType.
	
	-	optional **TotalNumberDensity** element of type DataType.
	
	-	optional **Composition** element.
		This element allows to description of environment components, e.g. perturber gases.
	
	
Composition
---------------

**Composition** element may describe various kinds of compositions: gas mixture, liquid solution, solid composition, etc.

	.. image:: environments/compositionType.png
		:alt: compositionType and ReferencedSpecieType elements and attributes
	
	Composition has one or more **Species** elements, each of them of **ReferencedSpecieType** type.
	
	**ReferencedSpecieType** allows to define either species **name**, or **speciesRef** reference in corresponding optional attributes.
	**SpeciesRef** may point through **speciesID** attribute either to atomic ion record or to molecule record in **Species** branch of XSAMS.
	Both attributes may be defined, in this case name should correspond to atom or molecule pointed by reference.
	
	Component presence measure can be defined by one of the optional elements:
	
	- **PartialPressure**
	
	- **MoleFraction**
	
	- **Concentration**
	
	each of type **DataType**.
	Only one of them may be present in a component record.
	To avoid confusion, all components of composition should define the abundance in the same type of elements.
	
	
	
Examples
------------
	
Example XML instances of **Environment**:

::

	<Environment envID="EHITRAN_refT">
		<Comments>the HITRAN reference temperature, 296 K</Comments>
		<Temperature>
			<Value units="K">296.</Value>
		</Temperature>
	</Environment>

::

	<Environment envID="EHITRAN_refpT">
		<Comments>the HITRAN reference pressure and temperature, 1 atm and 296 K</Comments>
		<Temperature>
			<Value units="K">296.</Value>
		</Temperature>
		<TotalPressure>
			<Value units="atm">1.</Value>
		</TotalPressure>
	</Environment>

::

	<Environment envID="Eair-broadening-ref-env">
		<Comments>the HITRAN air-broadening reference conditions</Comments>
		<Temperature>
			<Value units="K">296.</Value>
		</Temperature>
		<TotalPressure>
			<Value units="atm">1.</Value>
		</TotalPressure>
		<Composition>
			<Species name="N2">
				<MoleFraction>
					<Value units="unitless">0.79</Value>
				</MoleFraction>
			</Species>
			<Species name="O2">
				<MoleFraction>
					<Value units="unitless">0.21</Value>
				</MoleFraction>
			</Species>
		</Composition>
	</Environment>

::

	<Environment envID="Eself-broadening-ref-env">
		<Comments>the HITRAN self-broadening reference conditions</Comments>
		<Temperature>
			<Value units="K">296.</Value>
		</Temperature>
		<TotalPressure>
			<Value units="atm">1.</Value>
		</TotalPressure>
		<Composition>
			<Species name="self">
				<MoleFraction>
					<Value units="unitless">1.</Value>
				</MoleFraction>
			</Species>
		</Composition>
	</Environment>

