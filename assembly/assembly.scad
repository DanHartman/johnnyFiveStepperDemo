use <../parts/nextThingCoChip/nextThingCoChip.scad>;
use <../parts/stepper28BYJ_48/stepper28BYJ_48.scad>;
use <../parts/arduinoNano/arduinoNano.scad>;
use <../parts/uln2003Driver/uln2003Driver.scad>;


// translate([-50,-20,0])
// color("lightblue")
//   nextThingCoChip();


color("pink")
  stepper28BYJ_48();

// rotate([0,0,90])
// translate([50,0,0])
//   arduinoNano();

translate([20,10,0])
  uln2003Driver();