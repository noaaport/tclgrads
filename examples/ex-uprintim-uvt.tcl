#!%TCLSH%
#
# $Id: ex-uprintim-uvt.tcl,v cf4fd7927017 2009/09/11 16:26:32 nieves $
#
package require grads;

##
## Same as "ex-printim-uvt" but using the gradsu::xxxx functions
##
grads::init;
grads::open "yq";

gradsu::times times;
set t 1;
foreach date $times {
    gradsu::mset t $t;
    gradsu::display "skip(ugrdprs,3);skip(vgrdprs,3);tmpprs";
    gradsu::draw "title Wind/Temp $date";
    gradsu::printim uvt-$date.png;
    gradsu::clear;
    incr t;
}

grads::end;
