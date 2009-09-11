#!%TCLSH%
#
# $Id: ex-uprintim.tcl,v cf4fd7927017 2009/09/11 16:26:32 nieves $
#
package require grads;

grads::init;
grads::open "yq";

gradsu::mset gxout shaded;
gradsu::display tmpprs;
gradsu::printim "ex-uprintim.png";

grads::end;
