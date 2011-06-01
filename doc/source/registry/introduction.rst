.. _registryguide:

*************
Introduction
*************

The International Virtual Observatory Alliance (IVOA) registry allows astronomers to search, obtain details of, and leverage any of the resources located anywhere in the IVO space, namely in any Virtual Observatory. The IVOA defines the protocols and standards whereby different registry services are able to interoperate and thereby realise this goal.
IVOA registry defines interfaces on how to query and share resources. Software is written to conform to standard interfaces in order to assist scientific utilities to access particular resource. A resource in this context is represented in XML form and is stored in the registry. A resource may describe anything about an observatory, particular instrument, another registry, and services such as catalogue or table type services, cone searches. Extensions can be made if necessary and this functionality is made available for VAMDC.

Resource definition
--------------------

Resources conform to a standard schema and every XML request is validated to the schema before it can be submitted to the registry for querying.
More information on IVOA schemas can be found here: http://www.ivoa.net/xml/index.html

VOResource and Dublin Core
---------------------------

XML resources derive from a common top layer schema titled 'VOResource'. The VOResource may also be referred to as 'Core' or 'Dublin Core' as it contains the complete set of the necessary core data.
More information on VOResource documentation can be found here: http://www.ivoa.net/Documents/REC/ReR/VOResource-20080222.html

Identifier
-----------

Every resource in the registry must have an identifier (similar a primary key), which is URI based. A sample: ``ivo://vamdc/chianti/chianti_catalogue_service``

Identifier must be in the following form::

	ivo://{authorityid}/{resourcekey}

Registry manages authoritIDs. Any other registry cannot duplicate an authorityID, it is owned by one registry only.  For the purposes of VAMDC only one authority id ``vamdc`` is managed at present.
ResourceKey is a localised name and is unique in respect of the authorityID.

Though an identifier can be of any form, it is widely accepted that authorityId is a domain name or a subsection of an institute, such as ``mssl.ucl.ac.uk`` or ``climatephysics.mssl.ucl.ac.uk``.  Currently the assumption has been made that VAMDC only needs one main registry and will use the authority ID ``vamdc``. A ResourceKey is typically a name with reference to the registered resource.

More information about registry identifiers can be obtained below
 http://www.ivoa.net/Documents/REC/Identifiers/Identifiers-20070302.html

Virtual Observatory Support Interface (VOSI)
--------------------------------------------

The Support interface is required by all IVOA compliant services and defines common interfaces for its services. The registry uses common support interfaces to help populate resources in the registry.

* **Capability** - All services define capability metadata, which comprises of XML formatted metadata that describes a particular capability and location of this particular service. The capability also describes what standards this service conforms to. Certain capabilities will be to other VOSI interfaces or the VAMDC-XSAMS location along with what standard interface it supports for VAMDC-XSAMS. Registry uses this VOSI location of the capability metadata to property fill out the resource in the registry. If other VOSI locations are present such as Table and Application metadata it additionally harvests that data.

* **Table Metadata** - Another VOSI interface in XML form to describe table metadata for Catalogue services.

* **Application Metadata** - Not part of VOSI, an extension created to have a piece of XML VOSI for application description.

* **Availability** - Not used by the registry, but is provided as a Support interface to make retrieve information of uptime and other availability information concerning the service.

