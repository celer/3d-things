$fn=15;

module groove(){
	translate([0,0,15]){
		rotate_extrude(convexity = 10)
		translate([17,0,0])
		circle(r = 4, $fn=20);
	}
}

groove();
