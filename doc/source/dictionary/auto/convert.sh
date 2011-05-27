#!/bin/bash

#SQLITE to sphinx conversion for restrictables
sqlite3 -line dict.sqlite "select bk.name, bk.ldescr, bk.unit, bk.type, bk.constr from browse_keyword as bk, browse_keyword_usage as bku where bk.id = bku.keyword_id and bku.usage_id=1 order by bk.name;" |
sed -e 's/^ *name = \(.*\)/.. _res\1:\n\n\1\n-------------------------------------------------------------------\n\n/g' |
sed -e 's/^ *ldescr = \(.*\)/\1\n/g' |
sed -e 's/^ *unit = \(.*\)/**Units:** \1\n/g' |
sed -e 's/^\*\*Units:\*\* $//g' |
sed -e 's/^ *type = f/**Type:** floating-point number\n/g' |
sed -e 's/^ *type = i/**Type:** integer number\n/g' |
sed -e 's/^ *type = .*$/**Type:** string\n/g' |
sed -e 's/^ *constr = \(.*\)/**Constraints:** \1\n/g' |
sed -e 's/^.$//g' > restrictables.rst

#SQLITE to sphinx conversion for returnables
sqlite3 -line dict.sqlite "select bk.name, bk.ldescr, bk.unit, bk.type, bk.datatype, bk.constr from browse_keyword as bk, browse_keyword_usage as bku where bk.id = bku.keyword_id and bku.usage_id=2 order by bk.name;" |
sed -e 's/^ *name = \(.*\)/\n\1\n-------------------------------------------------------------------\n\n/g'|
sed -e 's/^ *ldescr = \(.*\)/\1\n/g'|
sed -e 's/^ *unit = \(.*\)/**Units:** \1\n/g'|
sed -e 's/^\*\*Units:\*\* $//g' |
sed -e 's/^ *type = f/**Type:** floating-point number\n/g'|
sed -e 's/^ *type = i/**Type:** integer number\n/g'|
sed -e 's/^ *type = .*$/**Type:** string\n/g'|
sed -e 's/^ *datatype = 0.*$//g'|
sed -e 's/^ *datatype = 1.*$/Has **DataType** suffixes support\n\n/g'|
sed -e 's/^ *constr = \(.*\)/**Constraints:** \1\n/g'|
sed -e 's/^.$//g' > returnables.rst


#SQLITE to sphinx conversion for requestables
sqlite3 -line dict.sqlite "select bk.name, bk.ldescr from browse_keyword as bk, browse_keyword_usage as bku where bk.id = bku.keyword_id and bku.usage_id=3 order by bk.name;" |

sed -e 's/^ *name = \(.*\)/.. _req\1:\n\n\1\n-------------------------------------------------------------------\n\n/g'|
sed -e 's/^ *ldescr = \(.*\)/\1\n/g'|
sed -e 's/^.$//g' > requestables.rst