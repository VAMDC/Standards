.. _registeringVamdcTap:


**********************
Registering VAMDC-TAP 
**********************


Registration process
=====================
If you are a new user you must first get a password to register your service in the registry.  For passwords contact registry @ vamdc.eu .

The registration process is as follows:

1. Install VAMDC-TAP service on a web visible server.

2. Go to registry web user interface and register your service core data. (As explained in :ref:`webAdministration`)

3. Ask the registry to load VOSI data from your service. You invoke this from the registry's web user-interface (see :ref:`webAdministration`) and the registry reads the capability data described below. You have to provide the URL for the VOSI data. In a typical VAMDC-TAP service this will be a URL ending in ``tap/capabilities``; e.g.::

  http://vald.astro.uu.se/tap/capabilities


Structure of registration document (capabilities)
=====================================================
The registry contains an XML registration-document for each known service (and for a few things that are not strictly services, but we ignore them here).

Inside each service registration-document there are capability elements defining the kinds of service provided. Inside each capability is an interface (sometimes more than one) and inside each interface is an accessURL element the value of which defines where to find that part of the service.

A typical registry query from code looks only at the capabilities and ignores the rest of the registration.

Here's an example of a capability::

    <capability standardID="ivo://ivoa.net/std/TAP">
        <interface xsi:type="vs:ParamHTTP">
            <accessURL use="base">http://vald.astro.uu.se/tap/</accessURL>
        </interface>
    </capability>

This refers to a web service on the Uppsala mirror of VALD.

Note the standardID attribute: the value of this identifies this capability as IVOA's Table Access Protocol (TAP) web-service. Capabilities for standard protocols always have a standardID attribute to tell them apart.

The interface element has ``xsi:type="vs:ParamHTTP"``, meaning that basic HTTP GET or POST work on this interface, and that HTTP parameters are involved in the protocol. Other types are ``vs:WebService``, meaning a SOAP endpoint, and ``vr:WebBrowser``, meaning a web site for interactive viewing.
The accessURL element identifies a web-resource on a server in Uppsala. The use="base" attribute means that the client must add a suffix to the given URL to get a working URL for a query. The nature of the suffix is defined by the protocol identified in the standardID attribute of the capability. Here, because it is TAP, we know to add ``/sync?`` and then the HTTP parameters defining a query.
Here is another example, from the same registration. ::

    <capability standardID="ivo://vamdc/std/VAMDC-TAP" 
        xmlns:tx="http://www.vamdc.org/xml/VAMDC-TAP/v1.0" xsi:type="tx:VamdcTap">
        <interface xsi:type="vs:ParamHTTP">
            <accessURL use="base">http://vald.astro.uu.se/tap/</accessURL>
        </interface>
        <returnable>AtomStateLandeFactorRef</returnable>
        <returnable>AtomNuclearCharge</returnable>
        <returnable>SourceCategory</returnable>
        ... 
        <restrictable>AtomStateEnergy</restrictable>
        <restrictable>AtomNuclearCharge</restrictable>
        <restrictable>RadTransLogGF</restrictable>
        <restrictable>AtomSymbol</restrictable>
        <restrictable>RadTransWavelengthExperimentalValue</restrictable>
        <restrictable>AtomIonCharge</restrictable>
    </capability>

This is the VAMDC-TAP capability for the same VALD mirror. It is very similar to the TAP example (VAMDC-TAP being a specialization of TAP); in fact the access URL is the same.

The main difference is the returnable and restrictable elements following the interface element. The returnables tell you which quantities can be obtained from this service. The restrictables tell you which terms can be used as contraints in the query (i.e. which column names can appear in the WHERE clause of a query).

The standardID value identifies this capability as VAMDC-TAP. The ``xsi:type`` attribute identifies the structural type as one for which the XML schema allows the returnable and restrictable children.

In both these examples, and in all capabilities you are likely to see, the elements are in the default namespace. This means that they are written without a namespace prefix, and you do not state a namespace when searching for elements by their names. However, some of the types have specific namespaces; if you search for elements by type you will have to deal with their those.

Please note the exact namespace used for the VAMDC-TAP example, above: ``http://www.vamdc.org/xml/VAMDC-TAP/v1.0``. Earlier examples used the namespace ``http://www.vamdc.eu/xml/TAPXSAMS/v1.0`` which is no longer valid.