.. _returnables:

Returnables
==========================

The following keywords are used as **Returnables** in Django implementation of
TAP-VAMDC node software.  **Returnables** is an internal concept of the Django
implementation, defining the names of the placeholders in the schema, where data
producer may put his data. There is no requirement for other implementations of
VAMDC-TAP to include support for them.
Some of the keywords suppose additional suffixes
that allows them to be expanded into **DataType** xsams object.  For further
information see the Django TAP-VAMDC documentation.

Another use case of returnables is the possibilty to determine if it make sense
to look for a certain piece of data in the output documents of the node. But
even if the node declares that it has that kind of data in it's output, there
is no guarantee that it will be present in a response for a particular query.


Implicit Returnables
~~~~~~~~~~~~~~~~~~~~~~~~

For the sake of not exploding the list below, keywords of a certain type are
omitted. These are the ones that belong to a *DataType* in the XSAMS schema. A
DataType has a value (the physical quantity itself) and can have units,
comments, a method, references and an accuracy in different formats. 
Therefore, if a keyword *SomeKeyword* is marked as a DataType, the 
following words can also be used as Returnables, even though they are not listed below.

* SomeKeywordUnit
* SomeKeywordRef
* SomeKeywordComment
* SomeKeywordMethod
* SomeKeywordAccuracyCalibration
* SomeKeywordAccuracyQuality
* SomeKeywordAccuracySystematic
* SomeKeywordAccuracySystematicConfidence
* SomeKeywordAccuracySystematicRelative
* SomeKeywordAccuracyStatistical
* SomeKeywordAccuracyStatisticalConfidence
* SomeKeywordAccuracyStatisticalRelative
* SomeKeywordAccuracyStatLow
* SomeKeywordAccuracyStatLowConfidence
* SomeKeywordAccuracyStatLowRelative
* SomeKeywordAccuracyStatHigh
* SomeKeywordAccuracyStatHighConfidence
* SomeKeywordAccuracyStatHighRelative


The list of Returnables
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: auto/returnables.rst
