
module plug(){ 
	difference(){
	 cylinder(r1=20,r2=15,h=30);
	 union(){
     groove();
     oring();
	  translate([0,10,-1]) cylinder(r=4,h=22);
	  translate([0,0,-1]) cylinder(r=4,h=35);
	 } 
  }
}

module groove(){
	translate([0,0,15]){
		rotate_extrude(convexity = 10)
		translate([17, 0, 0 ])
		circle(r = 4,$fn=20);
	}
}

module oring(){
	translate([0,0,4]){
		rotate_extrude(convexity = 10)
		translate([19, 0, 0 ])
		circle(r = 1,$fn=20);
	}
}

module socket(){
 difference(){
    union(){
		 translate([0,-35,30]) cube([120,5,60],center=true);
		 rotate([30,0,0]){
			 difference(){
			  
		     union(){
		         
		       translate([0,0,30]) sphere(r=31)
			    translate([0,0,30]) cylinder(r=20,h=5);
			    cylinder(r1=25,r2=20,h=30);
			  }
		     
  
           groove();
           oring();
			  cylinder(r1=20,r2=15,h=30);
			  translate([0,0,-1]) cylinder(r=8,h=50);
		     
			 }
		 }
    }
    translate([0,0,4.9]) rotate([90,0,0]) translate([0,0,15]) cylinder(r=4,h=30);
    translate([0,0,30]) rotate([75,0,0]) translate([0,0,15]) cylinder(r=9,h=80);
    translate([0,-42,30]) cube([120,10,60],center=true);
 }
 
}

socket();
translate([50,0,20]) plug();
