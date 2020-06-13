include<getriebe/Getriebe.scad>;
/*
translate([-10,0,0])
rotate([0,0,90])
difference(){

cube([80,20,5]);


rotate([0,0,90])    
translate([-1,-25,3])    
cube([80,5.2,3]);

translate([50+1.5*(16/2),10,-2])
cylinder(d=5.2,h=10);    
}

translate([0,20+0.1,0])
cube([50,5,7]);
 zahnstange(1.5, 50, 50, 5, 20, 10);*/
///* translate([30,50+20,0])
// stirnrad(1.5,16,5,5.25,20,-10);*/

//zahnstange_und_rad(2,200,10,10,5,10,20,5);

// MotorRad
translate([30,50+20,0])
stirnrad(0.5,20,2,5.25,20,10);

translate([30,50+20,0])
difference(){
union(){
 cylinder(d=7,h=10);

translate([0,0,5])
 rotate([90,0,0])  
cylinder(d=4,h=4); 
 
}
translate([0,0,5])
 rotate([90,0,0])  
cylinder(d=2.9,h=5);
cylinder(d=5.2,h=20);
}
 
// antriebsrad mit übersetzung
 translate([50,50,2])
stirnrad(1.5,16,5,5.25,20,-10,true);
  translate([50,50,0])
 stirnrad(0.5,20*3,2,5.25,20,-10,false);
 
 // halterung
 translate([10,0,0])
rotate([0,0,90])
difference(){
translate([40,0,0])
cube([40,20,5]);


rotate([0,0,90])    
translate([-1,-25,3])    
cube([80,5.2,3]);

translate([50,10,-2])
cylinder(d=5.2,h=10);    
    
translate([50+0.5*20*3/2+0.5*20/2,10,-2])
cylinder(d=5.2,h=10);        
}