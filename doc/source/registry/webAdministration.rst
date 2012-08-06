.. _webAdministration:

********************
Web Administration
********************

The End User does not have the capability to access registry via this Web interface. Only Scientist and other Technical users of VAMDC can use the registry to add or update resources in the VAMDC registry. End Users use other client programs such as the Astrogrid VODesktop to query on the resources located inside the registry.

Location, home page and menus
=================================

Production registry: http://registry.vamdc.eu/registry-12.07/

Registry of legacy system: http://registry.vamdc.org/registry-11.12/

Development registry: http://casx019-zone1.ast.cam.ac.uk/registry/

Welcome page
-----------------
The First page is simply a 'Welcome' page to provide access to the capabilities of the registry in the menu items. The Welcome page displays the AuthorityID setup by this registry.

Within the scope of this User Guide only the Querying/Creating/Updating resources are considered (see :ref:`figure-2` ). The other administration parts of the registry are discussed in the Administrator section of the registry.

    .. _figure-1:
	
    .. figure:: images/welcomeWindow.png
	
       Welcome
	   
Creating a resource
--------------------

Choosing 'Create Entry' will begin creating a new resource, you must choose a unique identifier for this registry and the 'type' of resource. (See :ref:`figure-2` )

    .. _figure-2:
	
    .. figure:: images/creatingResource.png
	
       Creating a resource

Core Data
----------

The Core Data as shown in Figure 3 must be filled out prior to creating a resource. It is the Core part of the resource XML, which is entered into the registry. A 'help' link is provided next to each field to help enter the data. It is desirable to open the help link as a new tab or window.

    .. _figure-3:
	
    .. figure:: images/coreData.png

       Core Data

Browsing the registry
----------------------

Several menu options exist to query or investigate the registry, however the most commonly used option is 'Browse'. When initially clicked, all the resources in the registry are displayed. It is possible to filter by identifier if needed. Only selected information is shown about the resource on the Browse screen including title, type of resource, and identifier (see :ref:`figure-4`). It may be necessary to select to perform a particular action or task on the resource such as updating, viewing, or see the raw XML.

    .. _figure-4:
	
    .. figure:: images/browseWindow.png
	
       Browse

Update resource option
-----------------------

On the Browse registry page 'Edit' link in the Query pages (shown in :ref:`figure-4`) is available to fulfil the options of resource detail update. A choice of Updating the Core Information, Updating other information via the VOSI interface, Updating Coverage information, and finally an Update Screen that gives access to the Raw XML are available.

    .. _figure-5:

    .. figure:: images/editWindow.png

       Edit Choice

Edit core
----------

Similar page as 'Creating a resource' with the html form fields populated with what is contained in the registry is shown in :ref:`figure-6`.

    .. _figure-6:

    .. figure:: images/updatingCoreWindow.png

       Updating Core metadata

Using VOSI
-----------

After Creating or during Updating a service an option is be given to update the service with a VOSI capabilities location.  This reads the XML metadata and populates the resource accordingly (shown in :ref:`figure-7`). This Form expects a VOSI URL to point to 'Capabilities' URL that describes locations and standards of this service and VOSI services (see :ref:`figure-7`).

    .. _figure-7:

    .. figure:: images/vosi.png

       Populating resource based on VOSI/Capabilities

Editing an existing resource (raw XML)
--------------------------------------

:ref:`figure-7` demonstrates the ability to upload Raw XML, local file, URL location or using an html Text box.  Options shown in :ref:`figure-8` may be useful if an XML resource is already locally saved, one may then edit manually and directly upload a new update. This option is also useful for making quick changes. When submitted it is validated and placed into the registry.

    .. note::

        If you change the identifier to something that is not in the registry it will automatically create the entry in the registry.

    .. _figure-8:

    .. figure:: images/rawXml.png

       Using raw XML to update or create resources

Video tutorial
===============

You can download a video tutorial for using the registry administration web pages `here <http://www.vamdc.org/downloads/usingVAMDCRegistryWebPages.mov>`_ .