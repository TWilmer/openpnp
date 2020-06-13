module nozleHolder(){
    
    difference() {
   cylinder(d=9,h=20); 
        translate([0,0,-10])
        cylinder(d=7,h=20);        
        cylinder(d=5,h=40); 
        
        translate([0,-10,15])
    rotate( [0,90,90])
        cylinder(d=2.8,h=40);     
        
        
        translate([3,-10,3])
        rotate( [0,90,90])
        cylinder(d=2,h=40);     
        
translate([-3,-10,3])
        rotate( [0,90,90])
        cylinder(d=2,h=40);             
    }
   
}

nozleHolder();