#!%TCLSH%
#
# $Id: ex-get.tcl,v cf4fd7927017 2009/09/11 16:26:32 nieves $
#
package require grads;

grads::init;
grads::open "yq";

grads::get_dimensions a;
foreach k [lsort [array names a]] {
    puts "a($k) = $a($k)";
}

grads::get_times times;
foreach t $times {
    puts $t;
}

gradsu::times times;
foreach t $times {
    puts $t;
}

grads::get_levels levels;
foreach z $levels {
    puts $z;
}

gradsu::levels levels;
foreach z $levels {
    puts $z;
}

grads::end;
