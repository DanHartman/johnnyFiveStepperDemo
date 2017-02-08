board_thickness=1.7;

module arduinoNano() {
  rotate([90,0,0])
  color("lightblue")
    import("src/pcb.stl");


  rotate([90,0,45])
  translate([22,board_thickness,11])
  color("silver")
    import("src/atmega.stl");

  rotate([270,0,270])
  translate([-7.5,0,27])
  color("silver")
    import("src/ftdi.stl");

  rotate([90,0,270])
  translate([-7.5,board_thickness,-39])
  color("silver")
    import("src/usbShell.stl");
  
  rotate([90,0,270])
  translate([-7.5,board_thickness,-39])
  color("purple")
    import("src/usbContacts.stl");

  rotate([90,0,270])
  translate([-7.5,board_thickness,-12])
    import("src/resetSwitch.stl");

  rotate([270,0,270])
  translate([-10,0,7])
  color("silver")
    import("src/ldo.stl");
}
