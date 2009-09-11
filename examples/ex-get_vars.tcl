#!%TCLSH%
#
# $Id: ex-get_vars.tcl,v cf4fd7927017 2009/09/11 16:26:32 nieves $
#
package require grads;

grads::init;
grads::open "yq";
grads::get_vars vars;
grads::end;

foreach v $vars {
    puts $v;
}

