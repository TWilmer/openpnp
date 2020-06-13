module motorBlock()
{
    // motor holder red side
difference()
{
     
    union() 
    {
        
        
        translate([-42,0,20])
        cube([42,42,5]);
        
        translate([0,-5,-15])
        cube([5,55,40]);
        
    translate([-28,-5,-05])
        cube([30,5,30]);        
        
    
    translate([-42/2-31/2,42/2+31/2,-10])
    roate([0,90,0])    
    cylinder(d=4,h=100);            
    }
    translate([-42/2,42/2,-10])
    cylinder(d=23,h=100);
    
    
    translate([-42/2+31/2,42/2+31/2,-10])
    cylinder(d=4,h=100);    
    
    translate([-42/2+31/2,42/2-31/2,-10])
    cylinder(d=4,h=100);    
    
    translate([-42/2-31/2,42/2-31/2,-10])
    cylinder(d=4,h=100);    
    translate([-42/2-31/2,42/2+31/2,-10])
    cylinder(d=4,h=100);    
    


    translate([-20,10,-13+20])
    rotate([0,90,0])
    cylinder(d=4,h=100);      
    


    translate([-20,10,-13+10])
    rotate([0,90,0])
    cylinder(d=4,h=100);      
    

    
    translate([-20,45,-13+10])
    rotate([0,90,0])
    cylinder(d=4,h=100);    

    translate([-20,25,-13+10])
    rotate([0,90,0])
    cylinder(d=4,h=100);        
    
    translate([-5,-10,0])
    rotate([0,90,90])
    cylinder(d=4,h=100);        

    translate([-5,-10,10])
    rotate([0,90,90])
    cylinder(d=4,h=100);            
   
}

}
module middleBlock()
{
    // red middle block
difference(){
 
union(){    
 translate([20,0,0])
 cube([80,70,5]);
    
 translate([42/2+(9.4/2)+12/2,10,0])
 cylinder(d=7,h=6);           
translate([42/2+(9.4/2)+12/2,60,0])
 cylinder(d=7,h=6);          
    if(false)
    {
translate([20,25,0])    
cube([20,20,5+11]);    
    
translate([20,0,5+11])    
cube([20,70,5]);        
    
    
 translate([42/2+(9.4/2)+12/2,60,10+5])
 cylinder(d=7,h=6);   

 translate([42/2+(9.4/2)+12/2,10,10+5])
 cylinder(d=7,h=6);       
    }
}
     
 translate([42/2+(9.4/2)+12/2,10,-6])
 cylinder(d=6,h=200);       
 translate([42/2+(9.4/2)+12/2,60,-6])
 cylinder(d=6,h=200);       
    
    
    
    
  translate([42-5+20+10,15,-6])   
   cylinder(d=4,h=200);        
    
    translate([42-5+20-10,15,-6])   
   cylinder(d=4,h=200);            
    
    
  translate([42-5+20+10,35,-6])   
   cylinder(d=4,h=200);        
translate([42-5+20-10,35,-6])   
   cylinder(d=4,h=200);            
    
    translate([0+42+5+27+5,35,-8])   
   cylinder(d=4,h=200);                

    translate([0+42+5+27+15,35,-8])   
   cylinder(d=4,h=200);                   
}
}
module redEndRoller()
{
  
    
    difference()
{      
union(){

    
difference(){
 union(){
    
     translate([42/2+(9.4/2)-12/2 ,30,5+10])
     cylinder(d=7,h=6);       
     translate([0,20,5+11])
    cube([42+5,30,5]);         
     
     translate([0,10,0])
  cube([42+5,40,5]);

 translate([42/2+(9.4/2)-12/2 ,30,0])
 cylinder(d=7,h=6);       
     
     
translate([0,45,-20])     
   cube([42+5,5,40]);     
 }
    
 translate([42/2+(9.4/2)-12/2 ,30,-6])
 cylinder(d=6,h=200);   
}   
        
    
    
    translate([42,10,-35])
    cube([5,40,40]);




}
 translate([0,20,-13-10])
 rotate([90,0,90])
 cylinder(d=4,h=200);   

 translate([0,35,-13-10])
 rotate([90,0,90])
 cylinder(d=4,h=200);   


      translate([42+5-10,-200,11])
 rotate([0,90,90])
 cylinder(d=4,h=500); 


    translate([42+5-10,-200,-10])
 rotate([0,90,90])
 cylinder(d=4,h=500); 

}

}

module prism(l, w, h) {
       polyhedron(points=[
               [0,0,h],           // 0    front top corner
               [0,0,0],[w,0,0],   // 1, 2 front left & right bottom corners
               [0,l,h],           // 3    back top corner
               [0,l,0],[w,l,0]    // 4, 5 back left & right bottom corners
       ], faces=[ // points for all faces must be ordered clockwise when looking in
               [0,2,1],    // top face
               [3,4,5],    // base face
               [0,1,4,3],  // h face
               [1,2,5,4],  // w face
               [0,3,5,2],  // hypotenuse face
       ]);
}

module all()
{

color("blue")
translate([20,20,150])
rotate([90,0,90])
prism(20,20,20);


color("blue")
translate([500-20,20,150])
rotate([90,0,180])
prism(20,20,20);

color("blue")
translate([500-20,520,150])
rotate([90,0,-90])
prism(20,20,20);

color("blue")
translate([20,520,150])
rotate([90,0,0])
prism(20,20,20);


translate([-20,0,0])
cube([20,20,300]);

translate([500-0,500+20,0])
cube([20,20,300]);


translate([500-0,-0,0])
cube([20,20,300]);

translate([-20,500+20,0])
cube([20,20,300]);


translate([0,150,150])
rotate([0,0,0])
translate([0,-20,20+13+5])
color("black",1)
cube([500,20,20]);

translate([0,150,150])
rotate([0,0,0])
translate([-5-42,-45,20+13])


middleBlock();


translate([500,150,150])
rotate([0,0,0])
mirror([1,0,0])
translate([-5-42,-45,20+13])


middleBlock();



// red end roller
translate([-0,500-40,150])
rotate([0,0,0])
translate([-5-42,20-10,20+13])
redEndRoller();


// mirrorred red end roller
translate([500,500-40,150])
rotate([0,0,0])
mirror([1,0,0])
translate([-5-42,20-10,20+13])
redEndRoller();


color("green",1)
translate([0,0,150])
cube([500,20,20]);

translate([0,0,150])
rotate([0,0,90])
translate([20,-20,0])
color("red",1)
cube([500,20,20]);
translate([0,0,150+20])
rotate([0,0,90])
translate([20,-20+10-27/2,0])
color("red",0.5)
cube([500,27,13]);
 


translate([500-20,0,150])
rotate([0,0,90])
translate([20,-20,0])
color("violet",1)
cube([500,20,20]);

translate([-20,540,150])
rotate([0,0,0])
translate([20,-20,0])
color("pink",1)
cube([500,20,20]);


    


color("yellow",1)
translate([-5,5+20,150+13])
motorBlock();

color("yellow",1)
translate([500+5,20+5,150+13])
mirror([1,0,0])
motorBlock();


}
/*rotate([0,180,0])
motorBlock();*/
/*rotate([0,90,0])
redEndRoller();*/

/*mirror([1,0,0])
redEndRoller();*/
//all();
rotate([90,180+90+180,0])
mirror([1,0,0])
middleBlock();

