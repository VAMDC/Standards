.. _queryingForResources:


******************************************
Querying the Registry for VAMDC Resources
******************************************

There are, broadly, four ways to put a query to the registry from Java. In increasing order of abstraction and preference they are:

	1. Call the registry (SOAP) web-service directly.
	2. Use the `AstroGrid <http://www.astrogrid.org/>`_ client library.
	3. Use the AstroGrid Astro-Runtime API.
	4. Use the VAMDC client library.

The `AstroGrid client library <http://software.astrogrid.org/doc/p/registry/2009.1/client/index.html>`_ is worth considering. If you have a simple query (e.g. if you already know the identifier for the service of choice and just want to extract the access URL) then the library is quite good. If you have a more-general query, particularly one that will return results from more than one registration, then the library has to be forced into a non-standard configuration to work properly.

The `Astro Runtime <http://www.astrogrid.org/wiki/Help/AstroRuntime>`_ is a better abstraction for the registry and is actually intended for applications programmers (the AstroGrid client-library above is aimed at system engineers). It can return results as Java objects rather than as XML, which is sometimes easier to deal with. However, you have to write your own query text, typically in XQuery.
There is a VAMDC client-library (see below), which tries to abstract common queries so you don't need to write any XQuery text. This library knows about (some of) the service types important in VAMDC. Support for forming queries is good. Support for parsing the results is limited; you either get a DOM or simple values in strings, depending on the kind of query.

VAMDC registry query library
=============================

A small (single-class) library is available for VAMDC work. Version 3.0 of this library as well as a zip file containing all the third-party, supporting jars are available for download from the links below. (The AstroGrid client-library for the registry is one of the third-party jars if you want to use it directly.) 

* `VAMDC registry-client library version 3.0 <http://www.vamdc.org/downloads/registry-client-3.0.jar>`_ 
* `3rd-party jars supporting the registry-client library <http://www.vamdc.org/downloads/registry-client-dependencies.zip>`_ 

Some usage notes follow. For the full range of function, see the Javadoc. Other technical descriptions of the software are available, but the main documentation is this page and the Javadoc.

To use the library, instantiate the single class ``eu.vamdc.registry.Registry``. Each method call makes one registry query (internally, some of them make a sequence of queries but you receive a single set of results). You can reuse the object for multiple, successive queries, but it is not safe to share it between threads. The no-argument constructor makes a client for the release registry. To use the development registry, pass the constant ``Registry.DEVELOPMENT_REGISTRY_ENDPOINT`` to the constructor (that is a string literal stating the endpoint for the registry of choice). The ability to select the development registry was added in v2.0 of the client.

The library lets you query for three kinds of information: whole registration documents, IVORNs and access URLs. The latter two types are delivered as lists or sets of strings and the registration documents as org.w3c.dom.Document instances. In the documents, the document element is an uninteresting wrapper and the query results are its first-level children.

Here is an example of finding all the TAP services (this matches one of the XQuery examples in the section above)::

    import eu.vamdc.registry.Registry;
    import org.w3c.dom.Document;
    import org.w3c.dom.NodeList;
    ...
        Registry reggie = new Registry();
        Document results = reggie.findTap();
        NodeList nl = results.getDocumentElement().getElementsByTagName("ri:Resource");
        for (int i = 0; i < nl.getLength(); i++) {
            // Do something with this registration document...
        }

You could also dismantle the results document using XSLT or XPATH. This might be better than using the DOM API.

If you want all the information for all the VAMDC-TAP services in the registry, there is a convenience method::

    import eu.vamdc.registry.Registry;
    Registry reggie = new Registry();
    Document results = reggie.findVamdcTap();

Sometimes you just want the access URLs for a class of services. Here is how::

    import eu.vamdc.registry.Registry;
    import java.net.URL;
    import java.util.Set;
    ...
        Registry reggie = new Registry();
        Set<String> results = reggie.findAccessUrlsByCapability(Registry.VAMDC_TAP_ID);
        for (String s : results) {
            URL u = new URL(s);
            // Use this service...
        }

Note the use of a string constant to set the standard-identifier for VAMDC-TAP. You could also write the literal identifier: ``ivo://vamdc/std/VAMDC-TAP``.

If you want to select resources by special criteria, then you have to supply your own XQuery. Using the last example from the XQuery section above, this code looks for the access URLs of VAMDC-TAP services that can give wavelength data. ::

    import eu.vamdc.registry.Registry;
    import org.w3c.dom.Document;
    import org.w3c.dom.NodeList;
    ...
        Registry reggie = new Registry();
        String query = 
            "declare namespace ri='http://www.ivoa.net/xml/RegistryInterface/v1.0'; " + 
            "for $x in //ri:Resource " + 
            "where $x/capability[@standardID='ivo://vamdc/std/VAMDC-TAP' " +
            "and restrictable='AtomSymbol'] " +
            "and $x/@status='active' " +
            "return $x/capability[@standardID='ivo://vamdc/std/VAMDC-TAP']/interface/accessURL";
        Document results = reggie.executeXquery(query);
        //    NodeList nl = results.getDocumentElement().getElementsByTagName("ri:Resource");
        NodeList nl = results.getDocumentElement().getElementsByTagName("accessURL");
        for (int i = 0; i < nl.getLength(); i++) {
            // Do something with this information...
            System.out.println(nl.item(i).getFirstChild().getNodeValue());
        }

Note the spaces at the end of each fragment of the query: these are necessary to make the overall query correct.

Sample registry query project
-----------------------------------

Some sample query routines are demonstrated in this eclipse project: `registry-query-sample-project.tar.gz <http://www.vamdc.org/downloads/registry-query-sample-project.tar.gz>`_

Routines are:

* Collection getIVOAIDs() - get all IVOA identifiers for TAP-VAMDC services
* String getTapURL(String ivoaid) - get access URL for specific service
* Collection getRestrictables(String ivoaID) - get list of supported restrictables for specific service

VAMDC web-portal
================

If you are only interested in VAMDC-TAP data-services, then you can find them in the registry using the VAMDC web-portal.

Astrogrid VODesktop
=======================

This user guide only shows how to point to the VAMDC registry with Astrogrid VODesktop and the main query screen for the registry.

http://www.astrogrid.org

StartUp
-------------

When VODesktop is launched, the first screen is normally VOExplorer. You can also find VOExplorer by selecting Window -> New VOExplorer in the menu. VOExplorer allows you to search the registry for resources in the registry.  Once you select a resource you can View its contents and perform certain actions that VODesktop might be aware of such as querying a Catalogue Service or running a particular Application.
    
    .. _figure-9:

    .. figure:: images/searchRegistryWindow.png

       Search registry window

Clicking the 'New Smart List' button brings up a window to begin searching on the registry. As the Text Boxes are filled out it queries registries for a 'count' of how many resources would be returned, and allow making the decision to perform the query or add new constraints.
    
    .. _figure-10:

    .. figure:: images/resourceListWindow.png

       Resource list window

Preferences
----------------

In the case of not being able to find any VAMDC resources it is possible that you located an incorrect registry. By clicking on VODesktop->Preferences brings up a window that allows switching to a different registry. Ensure that the correct VAMDC registry is selected (pointed to).

Production registry:
http://registry.vamdc.eu/vamdc_registry/services/RegistryQueryv1_0

Development registry:
http://casx019-zone1.ast.cam.ac.uk/registry/services/RegistryQueryv1_0

    .. _figure-11:
    
    .. figure:: images/voPreferences.png

       VO Preferences

