use <../parts/nextThingCoChip/nextThingCoChip.scad>;
use <../parts/stepper28BYJ_48/stepper28BYJ_48.scad>;
use <../parts/arduinoNano/arduinoNano.scad>;

translate([-50,-20,0])
color("lightblue")
  nextThingCoChip();

rotate([0,90,0])
color("pink")
  stepper28BYJ_48();

rotate([0,0,90])
translate([50,0,0])
arduinoNano();