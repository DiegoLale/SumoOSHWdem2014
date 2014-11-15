
difference()
{
	union()
	{

		hull()
		{
	
			translate([15,0,12])rotate([90,0,0])cylinder(d=24,h=94,$fn=100,center=true);
			translate([80,0,12])rotate([90,0,0])cylinder(d=24,h=94,$fn=100,center=true);
		}
		translate([30.5,-124/2,0])cube([40,124,24]);//aletas
		translate([3,-94/2,12])cube([13,94,12]);//altillo trasero
		translate([80,-124/2])cube([43,124,24]);//cubo delantero
		translate([0,40.5,0])positivo_linea();
		translate([0,-40.5,0])positivo_linea();
	}




	translate([0,0,-4])union()
	{
	//principio vaciados
		//vaciado principal
		translate([24,-88/2,5])cube([47,88,50]);
		translate([32.5,-104/2,5])cube([32,104,24]);//aletas
		translate([50,0,37])cube([60,60,30],center=true);
		// dos huecos reductoras motores
		translate([15,48,16])rotate([90,0,0])cylinder(d=16.5,h=14.5,$fn=50);
		translate([15,-48,16])rotate([-90,0,0])cylinder(d=16.5,h=14.5,$fn=50);
		translate([15,0,30])cube([12,60,30],center=true);
		//cuerpo motores
		intersection()
		{
			translate([15,0,16])rotate([90,0,0])cylinder(d=16.5,h=100,$fn=50,center=true);
			translate([15,0,16])cube([12,74.1,30],center=true);
		}
		// dos huecos reductoras motores
		translate([81,48,16])rotate([90,0,0])cylinder(d=16.5,h=14.5,$fn=50);
		translate([81,-48,16])rotate([-90,0,0])cylinder(d=16.5,h=14.5,$fn=50);
		translate([81,0,30])cube([12,60,30],center=true);
		//cuerpo motores
		intersection()
		{
			translate([81,0,16])rotate([90,0,0])cylinder(d=16.5,h=100,$fn=50,center=true);
			translate([81,0,16])cube([12,74.1,30],center=true);
		}
		tornillos();

		
		//ruedas delanteras
		translate([81,47.1,16])rotate([-90,0,0])cylinder(d=31,h=20,$fn=50);
		translate([81,-47.1,16])rotate([90,0,0])cylinder(d=31,h=20,$fn=50);
		//vaciado rampa
		translate([133,0,32])rotate([90,0,0])cylinder(r=33,h=150,$fn=50,center=true);
		translate([70,-20,22])cube([20,40,20]);//pasacables centro
		translate([3.5,-40,3])sensor_linea();
		translate([3.5,40,3])sensor_linea();
		translate([105,55,3])sensor_linea();
		translate([105,-55,3])sensor_linea();
	//fin zona vaciados
	}
}
module sensor()
{
translate([-1,-46/2,0])cube([2,46,50]);
translate([-2,-44/2,0])cube([2,44,50]);
translate([0,-6,1])cube([5.5,12,50]);
hull()
{
translate([0,-13,10])rotate([0,90,0])cylinder(r=16/2,h=40);
translate([0,-13,30])rotate([0,90,0])cylinder(r=16/2,h=40);
}
hull()
{
translate([0,13,10])rotate([0,90,0])cylinder(r=16/2,h=40);
translate([0,13,30])rotate([0,90,0])cylinder(r=16/2,h=40);
}
}
module tornillos()
{
translate([36,57,-1])cylinder(d=3.3,h=50,$fn=50);
translate([36,-57,-1])cylinder(d=3.3,h=50,$fn=50);
translate([62,57,-1])cylinder(d=3.3,h=50,$fn=50);
translate([62,-57,-1])cylinder(d=3.3,h=50,$fn=50);

translate([36,57,-1])cylinder(d1=6.5,d2=6.2,h=10,$fn=6);
translate([36,-57,-1])cylinder(d1=6.5,d2=6.2,h=10,$fn=6);
translate([62,57,-1])cylinder(d1=6.5,d2=6.2,h=10,$fn=6);
translate([62,-57,-1])cylinder(d1=6.5,d2=6.2,h=10,$fn=6);
}
module positivo_linea()
{
	translate([0,-13/2,0])cube([20,13,20]);
}
module sensor_linea()
{
	translate([-5.5/2,-7/2,-10])cube([5.5,7,50]);
	
}
/*
translate([10,47,0])cylinder(d=30,h=0.5);
translate([10,-47,0])cylinder(d=30,h=0.5);
translate([112,60,0])cylinder(d=20,h=0.5);
translate([112,-60,0])cylinder(d=20,h=0.5);