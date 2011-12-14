.. _changelog:

Change log for query language
=============================

Changes leading up to v11.05
----------------------------

The query-language "VAMDC SQL Sub-set 1" (VSS1) was defined. This language was the only one formally supported by VAMDC data-services in the 11.05 release of the system.


Changes in the 11.09 system-release
-----------------------------------

No new version of the standard was issued for this system release, but informal support for a new query language, VSS2, was implemented in some nodes.

VSS2 is VAMDC SQL Sub-set 2 and is a super-set of VSS1. Nodes that can process VSS2 queries can process VSS1 queries using the same code.

The features in VSS2 but not in VSS1 are:

* support for "requestables" to restrict the parts of the data model returned in the query results;

* prefices on restrictables to group them by context; the prefices at this time were "initial" and "final", relating to states involved in transitions, "reactantn" and "productn" relating to collisions.


Changes between v11.09 and v11.12
---------------------------------

VSS2 was formally defined. Its specification document is independent of that for VSS1, even though the two languages are related.

The prefices on restrictables were changed. "Upper" and "lower" replaced "initial" and "final".

In v11.12 of the system, VAMDC nodes are expected to accept either VSS1 or VSS2.