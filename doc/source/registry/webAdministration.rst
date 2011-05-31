.. _webAdministration:

********************
Web Administration
********************

The End User does not have the capability to access registry via this Web interface. Only Scientist and other Technical users of VAMDC can use the registry to add or update resources in the VAMDC registry. End Users use other client programs such as the Astrogrid VODesktop to query on the resources located inside the registry.

Location, home page and menus
=================================

Production registry: http://registry.vamdc.eu/vamdc_registry

Development registry: http://casx019-zone1.ast.cam.ac.uk/registry

Welcome page
-----------------
The First page is simply a 'Welcome' page to provide access to the capabilities of the registry in the menu items. The Welcome page displays the AuthorityID setup by this registry.

Within the scope of this User Guide only the Querying/Creating/Updating resources are considered (see :ref:`Figure 2 <figure-2>` ). The other administration parts of the registry are discussed in the Administrator section of the registry.

    .. _figure-1:
	
    .. figure:: images/welcomeWindow.png
	
       **Figure 1.** Welcome
	   
Creating a resource
--------------------

Choosing 'Create Entry' will begin creating a new resource, you must choose a unique identifier for this registry and the 'type' of resource. (See :ref:`Figure 2 <figure-2>` )

    .. _figure-2:
	
    .. figure:: images/creatingResource.png
	
       **Figure 2.** Creating a resource

Core Data
----------

The Core Data as shown in Figure 3 must be filled out prior to creating a resource. It is the Core part of the resource XML, which is entered into the registry. A 'help' link is provided next to each field to help enter the data. It is desirable to open the help link as a new tab or window.

    .. _figure-3:
	
    .. figure:: images/coreData.png

       **Figure 3.** Core Data

Browsing the registry
----------------------

Several menu options exist to query or investigate the registry, however the most commonly used option is 'Browse'. When initially clicked, all the resources in the registry are displayed. It is possible to filter by identifier if needed. Only selected information is shown about the resource on the Browse screen including title, type of resource, and identifier (see :ref:`Figure 4 <figure-4>`). It may be necessary to select to perform a particular action or task on the resource such as updating, viewing, or see the raw XML.

    .. _figure-4:
	
    .. figure:: images/browseWindow.png
	
       **Figure 4.** Browse

Update resource option
-----------------------

On the Browse registry page 'Edit' link in the Query pages (shown in :ref:`Figure 4 <figure-4>`) is available to fulfil the options of resource detail update. A choice of Updating the Core Information, Updating other information via the VOSI interface, Updating Coverage information, and finally an Update Screen that gives access to the Raw XML are available.

    .. _figure-5:
	
    .. figure:: images/editWindow.png

       **Figure 5.** Edit Choice

Edit core
----------

Similar page as 'Creating a resource' with the html form fields populated with what is contained in the registry is shown in :ref:`Figure 6 <figure-6>`.

    .. _figure-6:
	
    .. figure:: images/updatingCoreWindow.png

       **Figure 6.** Updating Core metadata

Using VOSI
-----------

After Creating or during Updating a service an option is be given to update the service with a VOSI capabilities location.  This reads the XML metadata and populates the resource accordingly (shown in :ref:`Figure 7 <figure-7>`). This Form expects a VOSI URL to point to 'Capabilities' URL that describes locations and standards of this service and VOSI services (see Figure 7).

    .. _figure-7:
	
    .. figure:: images/vosi.png
	
       **Figure 7.** Populating resource based on VOSI/Capabilities

Editing an existing resource (raw XML)
--------------------------------------

:ref:`Figure 7 <figure-7>` demonstrates the ability to upload Raw XML, local file, URL location or using an html Text box.  Options shown in :ref:`Figure 8 <figure-8>` may be useful if an XML resource is already locally saved, one may then edit manually and directly upload a new update. This option is also useful for making quick changes. When submitted it is validated and placed into the registry.

	.. note::

		If you change the identifier to something that is not in the registry it will automatically create the entry in the registry.

		
	
    .. _figure-8:
		
    .. figure:: images/rawXml.png
	
       **Figure 8.** Using raw XML to update or create resources

Video tutorial
===============

You can download a video tutorial for using the registry administration web pages `here <http://www.vamd.org/downloads/usingVAMDCRegistryWebPages.mov>`_ .