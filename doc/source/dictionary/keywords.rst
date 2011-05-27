.. _intro:


The VAMDC keywords
====================

In VAMDC, different pieces of software need to communicate to each other. Apart
from protocols and schema, a common vocabulary is needed. By this we mean a
list of "global keywords" that should consist of reasonably short,
human-readable keywords which uniquely define a certain type of information or
data. In the following we describe how the keywords were created and how they
are used in different parts of VAMDC software. The common gain in the various
aspects is that the vocabulary allows to split the tasks that are common to all
data sets from the database-specific information and routines. Thereby it
becomes possible to implement software that can be re-used by multiple
datasets, reducing the deployment on a new data set to implementing the parts
that are truly specific for it. 

Keywords origin
-----------------

In order to compile a list of well-defined names for all kinds of information
that VAMDC datasets can contain, we started from the XSAMS schema for atomic
and molecular data, that is used as a main data model within the project.

Flattened and stripped, xsams-derived keywords took form like
AtomStateLandeFactor, SourceAuthorName, MolecularSpeciesIonCharge.

The keywords representing desired branches of XSAMS like Species,Processes,
RadiativeTransitions,Collisions were added, those would find use
in future VSS2 query language.

Keywords use
---------------

The VAMDC keywords form three overlapping subsets: 

	*	:ref:`Restrictables`, used in registries and in VSS query language,
		any client software and VAMDC user portal must use them 
		to be able to request the data from VAMDC.
	*	:ref:`Returnables` that are currently used in registries and 
		internally in the Django TAP-VAMDC service implementation,
		they define placeholders in XSAMS tree for user data output.
	*	:ref:`Requestables` that are due to be added to the VSS2 version of 
		the query language. They would describe the branches of the XSAMS schema client
		wants to see in the output document produced by the service.

Use of Keywords for the Registry
--------------------------------------

The two aforementioned dictionaries RETURNABLES and RESTRICTABLES contain the
most important information about each data set in the form of global keywords:
what kind of data is contained in the database and which of these make sense to
restrict in the query. By using only the keys in these key-value pairs we can
compile this information in a format (XML-template) that the registry
understands. Once this extension to the registry is specified, the portal will
be able to decide from the information in the registry which databases might
have a sensible answer to a particular query and only send it to these.

Units
--------------------

In data model VAMDC does not enforce the use of a certain unit for a certain physical
quantity. However, in order to make queries understood by all nodes, 
the keywords that are used as RESTRICTABLE have a default unit, which is the one used in the query. 
This means that each node must be aware and convert the query to its internal unit before
executing the query. For returned data the node is free to use whatever applicable units from XSAMS UnitsType.
