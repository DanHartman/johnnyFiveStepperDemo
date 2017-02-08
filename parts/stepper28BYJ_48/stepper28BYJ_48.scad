module stepper28BYJ_48() {
  translate([0,0,0.75])
    union() {
      import("src/Part Studio 1 - Part 1.stl");
      import("src/Part Studio 1 - Part 3.stl");
      import("src/Part Studio 1 - Part 5.stl");
      import("src/Part Studio 1 - Part 7.stl");
      import("src/Part Studio 1 - Part 2.stl");
      import("src/Part Studio 1 - Part 4.stl");
      import("src/Part Studio 1 - Part 6.stl");
    }
}

module stepperMounts() {
  translate([7.85,-17.5,-19.25])
    cylinder(h=20, r1=2.01, r2=2.01, center=false);

  translate([7.85,17.5,-19.25])
    cylinder(h=20, r1=2.01, r2=2.01, center=false);
  
  translate([24,-7.5,-20.5])
    cube(size=[6,15,20], center=false);
}