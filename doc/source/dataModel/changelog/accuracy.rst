.. _accuracyDesc:

Accuracy of numerical data
=============================

For the sake of properly defining numerical data accuracy, new AccuracyType was been introduced,
that is used now in the **Accuracy** element of **DataType** and **DataFuncType**.

Accuracy description was been inspired by the one in IVOA Spectral Data Model v. 1.03

.. _accuracy:

AccuracyType
----------------

	.. image:: updates_aftercambridge/AccuracyType.png

	AccuracyType, extending **PrimaryType** allows to describe quality of data and has the following attributes and elements:
	
	* Optional **calibration** attribute that describes the kind of reference frame for data. Possible values are:
	
		-	**absolute**	indicates that the values in the data are expected to be correct within the given uncertainty
		
		-	**relative**	indicates that although an unknown systematic error is present, 
			the ratio and difference of any two values originating from the same source will be correct.
		
		-	**normalized**	indicates that the values, originating from this source, 
			have been divided by a certain reference quantity. 
			In this case units field of ValueType should be 'unitless'
		
		-	**uncalibrated** indicates that not only an unknown systematic error is present in data, 
			originating from that source, but also some unspecified value-dependant error.
			Thus, for example, for transitions frequencies only the order of transitions is guaranteed, 
			neither frequencies, nor their difference/ratio are accurate.
	
	*	Optional **quality** attribute of integer type that may be used for distinguishing quality-assessed data.
		Zero value means data, accurate within their errors, other values means that there were some problems with data.
	
	*	Optional **Systematic** element of type **AccuracyErrorType** for systematic errors
	*	Optional **Statistical** element of type **AccuracyErrorType** for total statistical error, i.e.
		upper/lower range are equal.
	*	Optional **StatHigh** and **StatLow** elements group may be specified instead of single **Statistical** element 
		to indicate statistical errors in case when upper and lower error ranges are not equal.
		
AccuracyErrorType
----------------------

	.. image:: updates_aftercambridge/AccuracyErrorType.png

	**AccuracyErrorType** is an extension of **xs:double** type, adding two attributes:
	
	*	**confidence** of type **xs:double**, with valid ranges from 0 to 1, 
		indicating confidence level for which this accuracy is calculated.
		Ususal values would be like **0.95** or **0.99**.
		
	*	**relative** of type **xs:boolean**, indicating whether this accuracy value 
		is absolute(**false**) or relative(**true**).
		By default, accuracy should be treated as absolute.