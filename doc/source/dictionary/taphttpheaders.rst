.. _taphttpheaders:

Custom HTTP headers of TAP-VAMDC
========================================================

"TAP-VAMDC" is the working title for the emerging data-access services that
return data in XSAMS format.
To provide the easily-accessible statistics of the response document,
several custom HTTP headers were defined.
They are reported for both HTTP HEAD and HTTP GET queries to the
TAP-VAMDC sync endpoint.

Statistics
-----------------

The following headers represent document statistics, all should be integer numbers.

* *VAMDC-COUNT-SPECIES*
	Total count of the atomic **Ion** and **Molecule** records with distinct SpecieID attribute.
* *VAMDC-COUNT-ATOMS*
	Count of the atomic **Ion** records with distinct SpecieID attribute.
* *VAMDC-COUNT-MOLECULES*
	Count of the **Molecule** records with distinct SpecieID attribute.
* *VAMDC-COUNT-SOURCES*
	Count of distinct **Source** records
* *VAMDC-COUNT-STATES*
	Count of distinct **State** records, both **AtomicState** and **MolecularState** combined
* *VAMDC-COUNT-COLLISIONS*
	Count of the **CollisionalTransition** elements of the **Processes** branch of XSAMS.
* *VAMDC-COUNT-RADIATIVE*
	Count of the **RadiativeTransition** elements of the **Processes** branch of XSAMS.
* *VAMDC-COUNT-NONRADIATIVE*
	Count of the **NonRadiativeTransition** elements of the **Processes** branch of XSAMS.

With a reasonable database layout the nodes should easily be able to
gather these numbers by running COUNT queries on their corresponding tables.


Volume limitation
-------------------

A TAP-XSAMS service can limit the amount of data it returns via the synchronous
interface, for example to prevent the fetching of the whole database or for
performance reasons. The service may then fill the HTTP-header of the response
with the field **VAMDC-TRUNCATED** that indicates the percentage 

VAMDC-TRUNCATED: 2.9 %


Document size estimate
-------------------------

**VAMDC-APPROX-SIZE** HTTP header is intended to provide the estimation of the size of the response document.
It should return an integer value, representing estimate uncompressed document size in megabytes.
