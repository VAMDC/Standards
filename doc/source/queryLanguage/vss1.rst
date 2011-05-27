.. _vss1:

====
VSS1
====


Introduction
-------------

VAMDC SQL Subset 1 (VSS1) is a query language designed for the VAMDC-TAP web-services. A query in VSS1 defines an extract of an archive that a data service can return in an VAMDC-XSAMS document or in a tabular format.

Subset of SQL92
~~~~~~~~~~~~~~~~

VSS1 is based syntactically on ISO SQL92 but discards almost all the features of that language. The only features remaining are those relevant to selecting data to build an VAMDC-XSAMS document; VSS1 contains no feature for modifying a database. VSS1 assumes VAMDC's standard view of the database as a single table. This latter point means that there is only one visible table (which therefore does not need to be named in a query) and the column names are terms taken from the VAMDC dictionary.
This is an example of a VSS1 query::

	SELECT ALL WHERE AtomNuclearCharge = 25 AND AtomIonCharge < 2

In the following definitions, VSS1 queries are assumed to be submitted by a client application  to a web-service. That service contains a query processor that converts the VSS1 query into a SQL query suitable for the relational database managed by the service. A request to the service contains the VSS1 text of the query and other parameters such as the desired formats of the returned results.

Interoperability and extensions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

VSS1 is intended to be interoperable across all VAMDC databases.  The same query can be accepted at all database, even though different data are raised from each. 

Making VSS1 fully interoperable and capable of easy implementation would exclude all the higher functions of SQL (mainly features of the WHERE clause, such as sub-queries). Where these features can easily be added to a particular query-processor it would be a beneficial to have them. Therefore, certain parts of SQL92 are noted as extensions to VSS1. A query containing extensions is not strictly valid VSS1 and therefore not interoperable across all database; it may work on particular database. Users and applications should normally use only valid VSS1, but may use extensions on queries written specially for individual databases.

Narrative definition (normative)
--------------------------------

To be a valid in VSS1, a query must satisfy the syntactic rules of the SQL92 language.

VSS1 queries never alter the database to which they are applied. 

* VSS1 query must be a SELECT statement. 

* VSS1 queries must not contain the SQL92 keywords ALTER, CREATE, DELETE, DROP,  INSERT, REPLACE or UPDATE.

* VSS1 queries must not contain the SELECT ... INTO construction of SQL92.

* VSS1 queries must not contain the JOIN keyword.

* Column names used as operands in a VSS1 query must be terms taken from the VAMDC dictionary. These columns names must not be qualified by the name of a schema or database. 

All the terms in the dictionary are valid as column names on all databases with a VSS1 processor. The query processor must implement the translation of the dictionary terms to names of real columns in the underlying database.

Where a VSS1 query specifies a column to be returned that does not exist in the target database, the query processor must ignore that part of the query, leaving the column out of the table of results. The processor must not reject the query as invalid.

Where a VSS1 query contains constraints on a column that does not exist in the target database, the query processor must ignore that constraint. It must not reject the query.

When the results of a query are to be returned in VAMDC-XSAMS format, VSS1 queries should begin with SELECT ALL ...; the set of columns from which data are returned is implicitly chosen by the choice of VAMDC-XSAMS format. If such a query does specify a set of columns (e.g. SELECT AtomIonCharge WHERE ...), then the query processor should ignore that set and proceed as if the query were SELECT ALL. However, where the results of a query are to be returned in a tabular format, the query processor must respect the query's selection of columns.

When processing a query that contains valid VSS1 plus extensions, the behaviour is defined by the implementation of the query processor. The processor may reject the query, or it may ignore the extensions that it does not support.

The following parts of SQL92 constitute VSS1 extensions: EXISTS, GROUP BY, HAVING, UNION, INTERSECT, EXCEPT, MINUS, ORDER BY, LIMIT, DECLARE, FETCH, CLOSE.

SQL92 syntax (informative)
--------------------------

The SQL92 standard [SQL92] should be consulted for the normative rules of syntax. These notes are for easy reference. VSS1 excludes so much of SQL that only the low-level aspects of the syntax are relevant.

SQL queries are written as text strings containing keywords, operators and operands separated by white space. Operands are names of tables and columns, sometimes called SQL identifiers or literal values. Identifiers and literals are sensitive to case; keywords and operators are not. There is a convention of writing keywords in upper case.

Queries can contain any Unicode character, but the keywords can be written using only ASCII characters. In VSS1, the valid identifiers also use only ASCII characters.

White space is required between keywords and operands but not between operators and operands. 
A typical (simple) SQL query looks like this::

	SELECT AtomIonCharge,AtomNuclearCharge FROM States WHERE AtomIonCharge>6

Here, data are selected from the columns AtomIonCharge and AtomNuclearCharge (note the use of a comma-separated list to specify the columns) of the table States according to a criterion on the electronic charge of the ions.
String literals are delimited by single quotes (the ASCII apostrophe character) thus::

	... WHERE AtomSymbol='Fe' ...

To include an apostrophe in a string, write two consecutive apostrophe-characters.
If an identifier contains 'special characters' (typically white space), it must be protected with double quotes thus::

	SELECT "silly column name" FROM ...

