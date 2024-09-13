module pin_arm() {
    translate([-50,-0.5,0])
    rotate([0,315,0])
    translate([-15,0,-55])
    import("/home/meelyn/Documents/3d_printing/pg_filament_guide_w_runout_sensor/stl/extended_arm_w_pin.stl", convexity=3);
}

module arm_sensor() {
    translate([15,-0.5,0])
    
    import("/home/meelyn/Documents/3d_printing/pg_filament_guide_w_runout_sensor/stl/arm_w_sensor.stl", convexity=3);
}

union() {
    
    difference(){
        color("blue")
            translate([0,-0.5,-14])
                cube([13.6,10,14]);
        
        color("red")
            translate([0,-0.5,-14])
                cube([8,6,14]);

    }
    pin_arm();
    arm_sensor();
}