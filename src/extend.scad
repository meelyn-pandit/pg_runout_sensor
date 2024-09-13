module pin_arm() {
    translate([30,-0.5,0])
    import("/home/meelyn/Documents/3d_printing/pg_filament_guide_w_runout_sensor/stl/original_arm_w_pin.stl", convexity=3);
}

module extend_arm() {
  difference(){
    translate([10,0,0])
        cube([40,10,18]);
    translate([10,0,4])
        cube([40,6,14]);
  }
}
union(){
    
    pin_arm();
    extend_arm();
}