.. _index:

==============================================================================================
Documenting VAMDC standards
==============================================================================================
  

License
------------------------------------------------------

All the documents and tutorials present in this repository are protected by the Creative Commons license CC BY-ND 4.0:

For the license detail, please visit: http://creativecommons.org/licenses/by-nd/4.0/

**You are free to:**

*   Share - copy and redistribute the material in any medium or format for any purpose, even commercially.

**Under the following terms:**

*   Attribution - You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so 
    in any reasonable manner, but not in any way that suggests the licensor endorses you or your use. 

*   NoDerivatives - If you remix, transform, or build upon the material, you may not distribute the modified material. 



VAMDC documentation and software versioning policy
------------------------------------------------------

.. toctree::
   :maxdepth: 1
   
   management/index


.. On the pages listed below you will find the specifications of standards currently used by the VAMDC, plus pdf for old versions.  

Data access protocol, query language and dictionaries
------------------------------------------------------
.. toctree::
   :maxdepth: 1

   dataAccessProtocol/index
   dataAccessProtocol/changelog
   queryLanguage/index
   queryLanguage/changelog
   dictionary/index

Data model
----------------------------------------------
.. toctree::
   :maxdepth: 1

VAMDC e-science infrastructure uses a data model that is serialized in a XML schema called VAMDC-XSAMS schema. The links point to the latest release of the VAMDC-XSAMS schema (though the previous releases are left below for history)

* The VAMDC-XSAMS schema files can be downloaded below `v1.0 <http://www.vamdc.org/downloads/vamdc-xsams-v1.0.tar.bz2>`_
* The VAMDC-XSAMS general reference guide can be :ref:`viewed <vamdcxsamsLanguage-index>` and can be `downloaded <http://www.vamdc.org/documents/vamdc-xsams-guide_v12.07.pdf>`_
* The VAMDC-XSAMS change log to the reference guide is included in the PDF reference guide and is available on line :ref:`here <dataModel-changelog-index>`
* The automatically generated documentation of the schema can be `viewed <http://www.vamdc.eu/documents/vamdc-xsams-doc-1.0>`_ or `downloaded <http://www.vamdc.org/downloads/vamdc-xsams-doc-v1.0.tar.bz2>`_
* The description of quantum numbers for molecules are done using different sets of quantum numbers packaged in "cases" related to the the type of molecule. The following documentation is compulsory in order to implement molecular databases or in order to understand the content of XSAMS files for molecules. This documentation called "case-by-case" schema documentation can be viewed `here <http://www.vamdc.eu/documents/cbc-1.0>`_


Registry
---------
.. toctree::
   :maxdepth: 1

   registry/index
   registry/changelog

Units
---------
.. toctree::
   :maxdepth: 1

   units/index

InChI Generation
-----------------
.. toctree::
   :maxdepth: 1

   inchi/index
   
XSAMS Processor service
----------------------------
.. toctree::
   :maxdepth: 1
   
   dataConsumerProtocol/index

Downloads
----------

Below are links to documents available for download.

==============================       ===========================================================================	=========================================================================	=========================================================================
document                              release 11.05									release 11.12									release |release|
==============================       ===========================================================================	=========================================================================	=========================================================================
data access protocol			`v11.05 <http://www.vamdc.org/documents/vamdc-tap_v11.05.pdf>`__ 		`v11.12 <http://www.vamdc.org/documents/vamdc-tap_v11.12.pdf>`__		`v12.07 <http://www.vamdc.org/documents/vamdc-tap_v12.07.pdf>`__
XSAMS Processor protocol												`v11.12 <http://www.vamdc.org/documents/xsams-consumer_v11.12.pdf>`__		`v12.07 <http://www.vamdc.org/documents/xsams-processor_v12.07.pdf>`__
query language        			`v11.05 <http://www.vamdc.org/documents/querylanguage_v11.05.pdf>`__		`v11.12 <http://www.vamdc.org/documents/querylanguage_v11.12.pdf>`__		`v12.07 <http://www.vamdc.org/documents/querylanguage_v12.07.pdf>`__
dictionary            			`v11.05 <http://www.vamdc.org/documents/dictionary_v11.05.pdf>`__ 		`v11.12 <http://www.vamdc.org/documents/dictionary_v11.12.pdf>`__		`v12.07 <http://www.vamdc.org/documents/dictionary_v12.07.pdf>`__
VAMDC-XSAMS schema   			`v0.2 <http://www.vamdc.org/downloads/vamdc-xsams-v0.2.tar.bz2>`__ 		`v0.3 <http://www.vamdc.org/downloads/vamdc-xsams-v0.3.tar.bz2>`__		`v1.0 <http://www.vamdc.org/downloads/vamdc-xsams-v1.0.tar.bz2>`__	
VAMDC-XSAMS schema doc  		`v0.2 <http://www.vamdc.org/downloads/vamdc-xsams-doc-v0.2.tar.bz2>`__		`v0.3 <http://www.vamdc.org/downloads/vamdc-xsams-doc-v0.3.tar.bz2>`__		`v1.0 <http://www.vamdc.org/downloads/vamdc-xsams-doc-v1.0.tar.bz2>`__
VAMDC-XSAMS reference guide 		`v0.2 <http://www.vamdc.org/documents/vamdc-xsams-guide_v0.2.pdf>`__		`v11.12 <http://www.vamdc.org/documents/vamdc-xsams-guide_v11.12.pdf>`__	`v12.07 <http://www.vamdc.org/documents/vamdc-xsams-guide_v12.07.pdf>`__
VAMDC-XSAMS change log    		`v0.2 <http://www.vamdc.org/documents/vamdc-xsams-changelog_v0.2.pdf>`__	included in the XSAMS ref. guide						
Case-By-Case schema doc   		`v0.2 <http://www.vamdc.org/documents/cbc_v0.2.pdf>`__				`view v.0.3 <http://www.vamdc.org/documents/cbc-0.3/>`__			`view v.1.0 <http://www.vamdc.org/documents/cbc-1.0/>`__
registry guide           		`v11.05 <http://www.vamdc.org/documents/registry-guide_v11.05.pdf>`__		`v11.12 <http://www.vamdc.org/documents/registry-guide_v11.12.pdf>`__		`v12.07 <http://www.vamdc.org/documents/registry-guide_v12.07.pdf>`__
Species identification (InChI)												`v11.12 <http://www.vamdc.org/documents/VAMDC-InChI_v11.12.pdf>`__		
==============================       ===========================================================================	========================================================================= 	=========================================================================


Changelog
-------------------

* 2011-05-27: First release of standards.  Version 11.05

* 2011-12-21: Second release of standards. Version 11.12

* 2012-08-06: Third(final) release of standards. Version 12.07
	- Updates in VAMDC-TAP
	- dictionaries updates
	- VAMDC-XSAMS 1.0
	- Final XSAMS Processor service protocol
