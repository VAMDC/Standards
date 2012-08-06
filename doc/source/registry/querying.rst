.. _querying:


********************
Querying
********************

Querying requires software to conform to the IVOA registry interface specification: http://www.ivoa.net/Documents/RegistryInterface/ .
There are four main query methods:

* Xquery - not supported in all IVOA registries, but VAMDC does support Xquery. It is the most advanced way of querying on the registry. But requires knowledge of all the registration schema structure to construct certain XPATH nodes. Software such as Astrogrid VODesktop gives you a simple query interface and performs the more complex Xquery behind the scenes.

* ADQL - also an advanced way of querying the registry. It is an SQL form over XML. It does not have all the functionality as Xquery such as ADQL can only return the full resource from the registry, but is standard and all IVOA registries conform to ADQL. Software that wants to be certain to work for all IVOA registries tend to use this method such as TopCat.

* KeywordSearch - generic keyword search mechanism.  

* GetResource - gets one particular resource entry from the registry, knowing that resource IVOA identifier. 

See :ref:`queryingForResources` for the available libraries and help querying of the registry.

XQuery
-------

The recommended way to look for things in the registry is to send in queries in the XQuery language. The registry responds with XML documents carrying the information matching the query.

For a given XQuery and for a given programming language, the details of the query can be encapsulated in a client library; the library phrases the query based on simple parameters to a method call. This has been done for typical VAMDC queries from Java, and the library is described below. Often this is all you need, but sometimes it is easier or more efficient to make the query directly from your application code.

If you do not understand the basics of XQuery you will not understand the details of this section. Either skip ahead to the descriptions of the client library or have a look at an XQuery tutorial.

This is an example of a registry XQuery. It finds the formal names of all the VAMDC-TAP services. ::

	declare namespace ri='http://www.ivoa.net/xml/RegistryInterface/v1.0';
	for $x in //ri:Resource
	where $x/capability[@standardID='ivo://vamdc/std/VAMDC-TAP']
	and $x/@status='active'
	return $x/identifier

The query could be translated as "Find all the registration documents containing a capability with the VAMDC-TAP identifier, taking only those for active services; give me the IVORNs and throw the rest away". The XPath construct ``//ri:Resource`` means "all the registration documents". Because this searches for a type of element, and because types have namespaces, we have to map the namespace to a prefix (the first line) and use that prefix in specifying the type (the ``ri:`` in ``ri:Resource``).

The registry's response will be be a document containing identifier elements as immediate children of the document element.

Most queries will be in this general form. It is important to restrict the search to active resources because the registry contains some that are "inactive" (resting, pending refurbishment) or "deleted" (gone for good, but not actually removed from the registry database).

This is a possible rearrangement of the query above. ::

	declare namespace ri='http://www.ivoa.net/xml/RegistryInterface/v1.0';
	return //ri:Resource[capability[@standardID='ivo://ivoa.net/std/TAP' and @status='active']/identifier

The constraints have been moved inside the square brackets in the return clause and the where clause disappears. Both queries should raise the same results; you can use whichever form is easiest for you.

Here is a different query, searching for TAP services. ::

	declare namespace ri='http://www.ivoa.net/xml/RegistryInterface/v1.0';
	for $x in //ri:Resource
	where $x/capability[@standardID='ivo://ivoa.net/std/TAP']
	and $x/@status='active'
	return $x

Here, the identifier for the capability is different - IVOA TAP instead of VAMDC-TAP - and, more importantly, the query returns all the parts of the registration documents, not just the identifiers.

As a final example, here is a query to give the access URLs (the URLs to which you would send the data query) for VAMDC-TAP services that can return data on measured wavelengths of radiative transitions. ::

	declare namespace ri='http://www.ivoa.net/xml/RegistryInterface/v1.0';
	for $x in //ri:Resource
	where $x/capability[@standardID='ivo://vamdc/std/VAMDC-TAP' 
	and returnable='RadTransWavelengthExperimentalValue']
	and $x/@status='active'
	return $x/capability[@standardID='ivo://vamdc/std/VAMDC-TAP']/interface/accessURL

The new trick here is to have a constraint - the part in square brackets - in both the where clause and the return clause. The constraint in the WHERE clause finds the right registrations and the one in the return clause makes sure that we get the URLs only from the VAMDC-TAP interfaces and not from any other interfaces those services might have.

The search term ``RadTransWavelengthExperimentalValue`` comes from the VAMDC dictionary. It appears in the query because VAMDC-TAP service register their returnables using that dictionary. The term is not inherent to XQuery or to the registry.
