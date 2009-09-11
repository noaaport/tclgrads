#!/bin/sh
#
# $Id: export.sh,v cf4fd7927017 2009/09/11 16:26:32 nieves $
#

tmpdir=tmp

# read name and version
. ../VERSION

rm -r -f $tmpdir
mkdir $tmpdir

cd $tmpdir
cvs -d :ext:nieves@opengrads.cvs.sourceforge.net:/cvsroot/opengrads \
    export -D now -d ${name}-${version} ${name}

tar -czf ../${name}-${version}.tgz ${name}-${version}

cd ..
rm -r $tmpdir
