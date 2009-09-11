#!%TCLSH%
#
# $Id: ex-get_levels.tcl,v cf4fd7927017 2009/09/11 16:26:32 nieves $
#
package require grads;

grads::init;
grads::open "yq";

# Output al levels
grads::get_levels levels;
foreach l $levels {
    puts $l;
}

# Output the currently set level
puts "-"
grads::get_levels levels -r;
foreach l $levels {
    puts $l;
}

# Set a range and output the levels in that range
puts "-"
grads::exec set z 1 10;
grads::get_levels levels -r;
foreach l $levels {
    puts $l;
}

grads::end;
