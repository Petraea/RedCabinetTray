module tray() {
 intersection() {
  difference() {
   minkowski() {
    sphere(r=3.5,center=true);
    cube([133,46,36],center=true);
   }
   minkowski() {
    sphere(r=3.5,center=true);
    cube([130,43,33],center=true);
   }
  }
  translate([0,0,-3.5]) cube([140,53,36],center=true);
 }
}

module handle() {
scale([1,1,0.8]) {
difference() {
intersection() {
union() {
difference() {
rotate([90,0,0]) cylinder(r=15,h=24,center=true);
rotate([90,0,0]) cylinder(r=13.5,h=26,center=true);
}
translate([0,7.5,3]) cube([15,1.5,12]);
translate([0,-7.5,3]) cube([15,1.5,12]);
}
rotate([90,0,0]) cylinder(r=15,h=24,center=true);
}
translate([-25,0,0]) cube([50,50,50],center=true);
translate([0,0,-25]) cube([50,50,50],center=true);
}
}
}

module cardholder() {
difference() {
cube([3,43,20],center=true);
translate([0,0,2]) cube([2,40,23],center=true);
translate([1,0,2]) cube([2,23,23],center=true);
translate([1,-10.5,4]) rotate([17,0,0]) cube([2,10,25],center=true);
translate([1,10.5,4]) rotate([-17,0,0]) cube([2,10,25],center=true);
}
}

module runners() {
union() {
translate([0,-16.5,0]) cube([125,1,1],center=true);
translate([0,16.5,0]) cube([125,1,1],center=true);
translate([-12.5,0,0]) cube([1,34,1],center=true);
translate([12.5,0,0]) cube([1,34,1],center=true);
translate([-31,0,0]) cube([1,34,1],center=true);
translate([31,0,0]) cube([1,34,1],center=true);
}
}

union() {
tray();
translate([69.5,0,-17]) handle();
translate([71,0,4.5]) cardholder();
translate([0,0,-22]) runners();
}
//translate([0,0,-3.5]) %cube([140,53,36],center=true);
