.. _vss2:

====
VSS2
====


Introduction
-------------

VAMDC SQL Subset 2 (VSS2) is a query language designed for the VAMDC-TAP web-services. 
A query in VSS2 defines an extract of an archive that a data service can return in an VAMDC-XSAMS document or in a tabular format.

Subset of SQL92
~~~~~~~~~~~~~~~~

VSS2 is based syntactically on ISO SQL92 but discards almost all the features of that language. 
The only features remaining are those relevant to selecting data to build an VAMDC-XSAMS document; VSS2 contains no feature for modifying a database. VSS2 assumes VAMDC's standard view of the database as a single table. This latter point means that there is only one visible table (which therefore does not need to be named in a query) and the column names are terms taken from the VAMDC dictionary.
This is an example of a VSS2 query::

	SELECT Species WHERE AtomNuclearCharge = 25 AND AtomIonCharge < 2

In the following definitions, VSS2 queries are assumed to be submitted by a client application  to a web-service. That service contains a query processor that converts the VSS2 query into a SQL query or set of queries, suitable for the relational database managed by the service. A request to the service contains the VSS2 text of the query and other parameters such as the desired formats of the returned results.

Superset of VSS1
~~~~~~~~~~~~~~~~

VSS2 is a superset of VAMDC SQL Subset 1 (VSS1). It adds to VSS1 the ability to specify the set of database columns from which data are returned.

Interoperability and extensions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

VSS2 is intended to be interoperable across all VAMDC databases.  The same query can be accepted at all database, even though different data are raised from each. 

Making VSS2 fully interoperable and capable of easy implementation would exclude all the higher functions of SQL (mainly features of the WHERE clause, such as sub-queries). Where these features can easily be added to a particular query-processor it would be a beneficial to have them. Therefore, certain parts of SQL92 are noted as extensions to VSS2. A query containing extensions is not strictly valid VSS2 and therefore not interoperable across all database; it may work on particular database. Users and applications should normally use only valid VSS2, but may use extensions on queries written specially for individual databases.

Narrative definition (normative)
--------------------------------

To be a valid in VSS2, a query must satisfy the syntactic rules of the SQL92 language.

VSS2 queries never alter the database to which they are applied. 

* VSS2 query must be a SELECT statement. 

* VSS2 queries must not contain the SQL92 keywords ALTER, CREATE, DELETE, DROP,  INSERT, REPLACE or UPDATE.

* VSS2 queries must not contain the SELECT ... INTO construction of SQL92.

VSS2 queries must not contain the JOIN keyword.

Column names used as operands in a VSS2 query must be terms taken from the VAMDC dictionary. 

Column names appearing in the WHERE clause must be taken from the Restrictables dictionary. These names may be qualified by a context, e.g. to distinguish between the upper and lower states of an electronic transition. The qualified name is written with the context name as a prefix to the restrictable name, separated by a full stop, e.g. ``final.StateEnergy``. The following contexts are defined in VSS2.

* ``reactantn`` (where n is a positive integer) associates column names with the nth reactant in a chemical network. E.g. ``reactant1.MoleculeInchiKey``.

* ``productn`` (where n is a positive integer) associates column names with the nth product in a chemical network. E.g. ``product2.MoleculeInchiKey``.

* ``collider`` associates column names with the incident particle in a collision. E.g. ``collider.AtomSymbol``.

* ``target`` associates column names with the target particle in a collision. E.g. ``target.MoleculeStateEnergy``.

* ``initial`` associates column names with the initial state of a transition. E.g. ``initial.StateEnergy.

* ``final`` associates column names with the final state of a transition. E.g. ``final.StateLifeTime``.

The list of column names following the SELECT keyword, which specify the columns from which data are to be returned, must be taken from the Requestables dictionary, or must contain only the single keyword ALL (that keyword having its normal meaning in SQL92). Note that the 'columns' in this dictionary are composites. In a tabular representation of the results a requestable 'column' may produce multiple output-columns. In an XSAMS representation, a requestable 'column' may produce an XML fragment with significant sub-structure.

All the terms in the dictionary are valid as column names on all databases with a VSS2 processor. The query processor must implement the translation of the dictionary terms to names of real columns in the underlying database.

VSS2 processors may accept only a sub-set of the dictionary keywords, corresponding to the content of the underlying database. This sub-set naturally varies between databases and the set of restrictables and requestables for a given database is normally made available to the clients of the database. Where a query includes restrictables or requestables not supported by a given VSS2 processor, the processor must reject the query; it must not process the query while ignoring the unsupported items.

When processing a query that contains valid VSS2 plus extensions, the behaviour is defined by the implementation of the query processor. The processor may reject the query, or it may ignore the extensions that it does not support.

The following parts of SQL92 constitute VSS2 extensions: EXISTS, GROUP BY, HAVING, UNION, INTERSECT, EXCEPT, MINUS, ORDER BY, LIMIT, DECLARE, FETCH, CLOSE.

SQL92 syntax (informative)
--------------------------

The SQL92 standard [SQL92] should be consulted for the normative rules of syntax. These notes are for easy reference. VSS2 excludes so much of SQL that only the low-level aspects of the syntax are relevant.

SQL queries are written as text strings containing keywords, operators and operands separated by white space. Operands are names of tables and columns, sometimes called SQL identifiers or literal values. Identifiers and literals are sensitive to case; keywords and operators are not. There is a convention of writing keywords in upper case.

Queries can contain any Unicode character, but the keywords can be written using only ASCII characters. In VSS2, the valid identifiers also use only ASCII characters.

White space is required between keywords and operands but not between operators and operands. 
A typical (simple) VSS2 query looks like this::

	SELECT ALL WHERE AtomIonCharge>6
	
This query would be equally valid::

	SELECT ALL WHERE AtomIonCharge > 6

Here, data are selected from the columns AtomIonCharge and AtomNuclearCharge (note the use of a comma-separated list to specify the columns) of the table States according to a criterion on the electronic charge of the ions.
String literals are delimited by single quotes (the ASCII apostrophe character) thus::

	... WHERE AtomSymbol='Fe' ...

To include an apostrophe in a string, write two consecutive apostrophe-characters.
If an identifier contains 'special characters' (typically white space), it must be protected with double quotes thus::

	SELECT "silly column name" WHERE...

