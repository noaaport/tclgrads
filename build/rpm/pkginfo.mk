#
# $Id: pkginfo.mk,v cf4fd7927017 2009/09/11 16:26:32 nieves $
#

# This is read by the (rpm) makefile to produce the <name>-<version>.spec
# file. The defaults are for FC, and the overrides are other flavors are below.
FLAVOR = $(shell ./flavor.sh)

package_build = 1
rpmroot = /usr/src/redhat

# empty variables will be filled by make
Summary = Tcl interface to GrADS
Name = ${name}
Version = ${version}
Release = ${package_build}
License = BSD
Group = Development/Libraries
Source = http://www.noaaport.net/software/${pkgsrc_name}/src/${pkgsrc_name}.tgz
BuildArchitectures = noarch
BuildRoot = ${rpmroot}/BUILD/${pkgsrc_name}/build/rpm/pkg
Requires = expect tcllib

ifeq (${FLAVOR}, opensuse)
rpmroot = /usr/src/packages
endif

ifeq (${FLAVOR}, centos)
Requires =  expect
endif
