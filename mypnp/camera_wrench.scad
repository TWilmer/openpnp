difference(){
cube([8,8,2]);
    translate([1,1,-1])
linear_extrude(height = 8, center = true, convexity = 10, twist = 0)
 import("/tmp/camera.svg");
}
scale([1/20, 1/20, 1/20])
linear_extrude(height = 800,center = true, convexity = 10, twist = 0)
 import("/tmp/camera.svg");