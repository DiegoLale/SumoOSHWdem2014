difference()
{
	union()
	{
		hull()
		{
		translate([0,-47,0])cube([50,94,23]);
		
		translate([70,-25,11.5])rotate([0,0,-15])cube([5,50,23],center=true);//artillo sensor
		translate([70,25,11.5])rotate([0,0,15])cube([5,50,23],center=true);//artillo sensor	
		}
			translate([27.5,-124/2,0])cube([40,124,23]);//aletas	
			translate([76.5,0,0])cylinder(r=3,h=23,$fn=30);

	
		
	}

	union()
	{
	

		translate([17,-20,-10])cube([40,40,50]);
		translate([46,-56,-1])cylinder(r=1.8,h=30,$fn=30);
		translate([46,56,-1])cylinder(r=1.8,h=30,$fn=30);

	
		translate([6,0,-1])cylinder(r=1.8,h=30,$fn=30);
		translate([-100,-100,3])cube([300,300,50]);


}
}
module  sensor()
{
translate([-4,-46/2,-1])cube([5,46,22]);
translate([0,-26/2,11])rotate([0,90,0])cylinder(d1=16.5,d2=30,h=50,$fn=50);
translate([0,26/2,11])rotate([0,90,0])cylinder(d1=16.5,d2=30,h=50,$fn=50);
hull()
{
translate([0,-2.5,17])rotate([0,90,0])cylinder(r=3,h=4,$fn=20);
translate([0,2.5,17])rotate([0,90,0])cylinder(r=3,h=4,$fn=20);
}
hull()
{
translate([0,-2.5,5])rotate([0,90,0])cylinder(r=3,h=4,$fn=20);
translate([0,2.5,5])rotate([0,90,0])cylinder(r=3,h=4,$fn=20);
}
}


