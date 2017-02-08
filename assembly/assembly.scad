$fn=20;

use <../parts/nextThingCoChip/nextThingCoChip.scad>;
use <../parts/stepper28BYJ_48/stepper28BYJ_48.scad>;
use <../parts/arduinoNano/arduinoNano.scad>;
use <../parts/uln2003Driver/uln2003Driver.scad>;



mountThickness=4;
mountWidth=75;



difference() {
  union() {
    translate([0,5,-mountThickness/2])
      cube(size=[65,mountWidth,mountThickness], center=true);
    rotate([90,0,0])
    translate([0,-mountWidth/2,-((mountWidth/2)+(7 - mountThickness/2))])
      cube(size=[65,mountWidth,mountThickness], center=true);
  }
  union() {
    translate([-27,46,-10])
    rotate([270,0,0])
    color("lightblue")
      nextThingCoChip();

    translate([20,45,-15])
    rotate([90,0,0])
    cylinder(h=mountThickness*2, r1=6, r2=6, center=false);
  
    stepperMounts();
  
    color("pink")
      stepper28BYJ_48();

    rotate([90,90,0])
    translate([35,-27,-41.5])
      arduinoNano();
    
    rotate([90,270,0])
    translate([-53.5,-11,-41.5])
    color("green")
      uln2003Driver();
  }
}
