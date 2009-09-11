#!%TCLSH%
#
# $Id: ex-printim.tcl,v cf4fd7927017 2009/09/11 16:26:32 nieves $
#
package require grads;

grads::init;
grads::open "yq";

grads::exec set gxout shaded;
grads::exec d tmpprs;
grads::exec printim "ex-printim.png";

grads::end;
