    module stand()
    {
    difference(){ union() {
        translate([0,0,0])
        cube([5,5,100]);    
        translate([105,105,0])
        cube([5,5,100]);    
        translate([105,0,0])
        cube([5,5,100]);    
        translate([0,105,0])
        cube([5,5,100]);    
        
        translate([0,0,100])
        cube([110,110,3]); 
        
    translate([35,35,10])
    union() {    
        
            translate([0,0,0])
        cube([5,5,90]);            
            
        translate([0,35,0])
        cube([5,5,90]);            
    
        translate([35,35,0])
        cube([5,5,90]);            
    
        translate([35,0,0])
        cube([5,5,90]);      
    }    
        }   
         for(y=[0:1:3])
        for(x=[0:1:3])
        {
            translate([5*(x+1)+x*30,5*(y+1)+y*30,90])
        cube([30,30,30]);    
        }
        
         
    }
    }
        stand();
    
    
    module camera()
    {
        difference() {
            
        union() {
            
    
            
        cube([50,50,4]);
        translate([10+2,10+2,3])
        cylinder(d=1.5,h=10);
        translate([10+2,10+2,3])
        cylinder(d=3,h=5);        
            
            
        translate([10+2+21,10+2,3])
        cylinder(d=1.5,h=10);
        translate([10+2+21,10+2,3])
        cylinder(d=3,h=5);                
    
    
        translate([10+2,10+2+12.5,3])
        cylinder(d=1.5,h=10);
        translate([10+2,10+2+12.5,3])
        cylinder(d=3,h=5);        
            
            
        translate([10+2+21,10+2+12.5,3])
        cylinder(d=1.5,h=10);
        translate([10+2+21,10+2+12.5,3])
        cylinder(d=3,h=5);      
    
    
    
       
    
        }
        
        translate([2,2,0.4])
        union(){
        translate([0,0,0])
        cube([5.2,5.2,100]);            
            
        translate([0,35,0])
        cube([5.2,5.2,100]);            
    
        translate([35,35,0])
        cube([5.2,5.2,100]);            
    
        translate([35,0,0])
        cube([5.2,5.2,100]);            
        }
    }
    }
    
    //camera();