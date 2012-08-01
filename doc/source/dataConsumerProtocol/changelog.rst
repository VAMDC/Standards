Changes between 12.07 and 11.12 versions
==========================================

#. Name change from XSAMS Consumers to XSAMS Processors. 
	XML schema registration name stays unchanged

#. Omit the requirement of /info resource

#. Precise request scenario that must be implemented by the service application:

	*	Service must respond with 302 redirect to processing requests

	*	Service must cache documents or results
	
	*	service must employ 202 result code for the page indicating the progress of download and processing of
		incoming documents

#. Exclude mention of employing URL parameters to distinguish closely-related applications

#. Provide example client shell script

