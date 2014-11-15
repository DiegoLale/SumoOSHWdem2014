difference()
{
	union()
	{
		translate([0,-47,0])cube([92,94,0.5]);
		translate([0,-47,0])cube([50,94,23]);
		translate([27.5,-124/2,0])cube([40,124,23]);//aletas	
		translate([70,-25,11.5])rotate([0,0,-15])cube([5,50,23],center=true);//artillo sensor
		translate([70,25,11.5])rotate([0,0,15])cube([5,50,23],center=true);//artillo sensor
		hull()
		{
			translate([76.5,0,0])cylinder(r=3,h=23,$fn=30);
			translate([89,0,0])cylinder(r=3,h=0.2,$fn=30);
		}
		
	}

	union()
	{
		translate([29.5,-120/2,3])cube([34,120,40]);//aletas	
		translate([29.5,-100/2,-5])cube([34,100,40]);//aletas
		translate([3,-44,-5])cube([50,88,40]);
	
		translate([46,-56,-1])cylinder(r=1.8,h=30,$fn=30);
		translate([46,56,-1])cylinder(r=1.8,h=30,$fn=30);
		translate([46,-56,-1])cylinder(r=3.15,h=10,$fn=6);
		translate([46,56,-1])cylinder(r=3.15,h=10,$fn=6);
		translate([6,0,-1])cylinder(r=1.8,h=30,$fn=30);
		translate([6,0,-1])cylinder(r=3.15,h=10,$fn=6);

		translate([67,-25,0.5])rotate([0,0,-15])sensor();
		translate([67,25,0.5])rotate([0,0,15])sensor();

		translate([33,57,-1])cylinder(d=3.3,h=50,$fn=50);	//tornillo
		translate([33,-57,-1])cylinder(d=3.3,h=50,$fn=50);	//tornillo
		translate([59,57,-1])cylinder(d=3.3,h=50,$fn=50);	//tornillo
		translate([59,-57,-1])cylinder(d=3.3,h=50,$fn=50);	//tornillo
		hull()
		{
			translate([5,-40,-1])cube([40,80,50]);
			translate([69,-46/2,-1])rotate([0,0,15])translate([6,24,0])cube([5,46,50]);
			translate([69,-46/2,-1])rotate([0,0,-15])translate([-6,-25,0])cube([5,46,50]);
		}
	}
}


module sensor()
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


difference()
{
	union()
	{
		translate([0,-47,0])cube([12,94,2]);
		translate([46,-56,0])cylinder(r=6,h=23,$fn=30);
		translate([46,56,0])cylinder(r=6,h=23,$fn=30);
		translate([6,0,0])cylinder(r=6,h=23,$fn=30);
		translate([0,-6,0])cube([6,12,23]);
		translate([40,-62,0])cube([12,6,23]);
		translate([40,56,0])cube([12,6,23]);

	}
	union()
	{
		translate([46,-56,-1])cylinder(r=1.8,h=30,$fn=30);
		translate([46,56,-1])cylinder(r=1.8,h=30,$fn=30);
		translate([46,-56,-1])cylinder(r=3.15,h=10,$fn=6);
		translate([46,56,-1])cylinder(r=3.15,h=10,$fn=6);
		translate([6,0,-1])cylinder(r=1.8,h=30,$fn=30);
		translate([6,0,-1])cylinder(r=3.15,h=10,$fn=6);
	}
}