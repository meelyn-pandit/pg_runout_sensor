$fs = 1;
$fa = 1;

module objectToCut() {
	// put your thing here
  translate([0, -5, 0]){
    import("/home/meelyn/Downloads/GUIDE_ROLLER_SUPPORT_ARM.stl", convexity=3);
  }
}

//objectToCut();

module intersector() {
	translate([-20, 0, 0]) cube([200, 200, 201]); //build volume
	
	// remove this if you don't like the gutter
	rotate([0, -90, 0]) translate([0, 0, -1]) linear_extrude(height=2) difference() {
		offset(-5) projection() rotate([0, 90, 0]) objectToCut();
		offset(-8) projection() rotate([0, 90, 0]) objectToCut();
	}

}

//intersector();

module part1() {
	render() intersection() {
		objectToCut();
		intersector();
	}
}

module part2() {
	render() difference() {
		objectToCut();
		intersector();
	}
}

part1(); // change to part2() for the other half
//part2();