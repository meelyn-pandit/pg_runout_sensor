module arm_attach() {
    translate([20,-0.5,0])
    import("/home/meelyn/Documents/3d_printing/pg_filament_guide_w_runout_sensor/stl/original_arm_w_attachment.stl", convexity=3);
}

module runout_sensor() {
  rotate([0,270,0])
    rotate([0,0,90])
   import("/home/meelyn/Documents/3d_printing/pg_filament_guide_w_runout_sensor/stl/Filament_Sensor_Housing.stl", convexity=3);
}

union(){
    arm_attach();
    translate([0,-10,-15])
    runout_sensor();
}