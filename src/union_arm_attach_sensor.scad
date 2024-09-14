module arm_attach() {
    rotate([0,117,0])
    import("/home/meelyn_pandit/Documents/3d_prints/pg_runout_sensor/stl/original_arm_w_attachment.stl", 
    convexity=3);

}

module runout_sensor() {
   import("/home/meelyn_pandit/Documents/3d_prints/pg_runout_sensor/stl/Filament_Sensor_Crealityv1.stl", convexity=3);
}

module extended_arm() {
    union() {
        translate([7.7,-15,71])
                color("blue")
                cube([23,19,4]);
        translate([7.7,0,60])
            color("red")
            cube([23,4,15]);
        translate([-1,-6.5,54])
            arm_attach();
    }
}


union() {
    extended_arm();
    
        translate([-8.5,-28.3,71])
            runout_sensor();
}
