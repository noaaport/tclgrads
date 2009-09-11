#!%TCLSH%
#
# $Id: ex-printim-uvt.tcl,v cf4fd7927017 2009/09/11 16:26:32 nieves $
#
package require grads;

grads::init;
grads::open "yq";

grads::get_times times;
set t 1;
foreach date $times {
    grads::exec set t $t;
    grads::exec d "skip(ugrdprs,3);skip(vgrdprs,3);tmpprs";
    grads::exec draw title Wind/Temp $date;
    grads::exec printim uvt-$date.png;
    grads::exec clear;
    incr t;
}

grads::end;
