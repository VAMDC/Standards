.. _cbc-introduction:

==============================================================================================
Introduction
==============================================================================================

The 'case-by-case' XML description of molecular states within XSAMS is designed to provide a straightforward and
'flat' data structure for representing the quantum numbers and symmetries that
define a molecular state. As of version 0.2.1, 12 cases have been implemented,
covering the needs of the HITRAN, CDMS, and BASECOL databases.    Each case is
identified by a ``prefix`` and a ``version``, and belongs to the namespace given
(currently) by the URI `<http://www.ucl.ac.uk/~ucapch0/XSAMS/cases/<prefix>/<version>>`_. 
At least for the time being, it is
suggeested that validation is through Namespace Validation Dispatch Language
(NVDL). This may be implemented by including the relevant processing instruction
in the XSAMS XML instance document, after the XML declaration. For example,
using the oxygen editor   ::

   <?xml version="1.0" encoding="UTF-8"?>
   <?oxygen NVDLSchema="cbc.nvdl"?>
   ...

The NVDL Schema document, ``cbc.nvdl`` contains a set of rules which link the
namespaces encountered in the XML document with the Schemata required to
validate them. An sample NVDL document may be downloaded from
`<http://www.ucl.ac.uk/~ucapch0/XSAMS/>`_.    