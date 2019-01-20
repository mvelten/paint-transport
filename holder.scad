include <sizes.scad>;
thickness=5;


// switch between intersection and difference for left/right half
intersection() {
//difference() {
    
    difference() {
        union(){
            // base cube
            translate([-thickness, 0,0]) cube([tray_length +2*thickness , 1+ 2*tray_depth, 2 + vallejo_height+thickness]);
            // back wall
            translate([-thickness,-thickness,0])cube([tray_length+2*thickness, thickness,vallejo_height+thickness+2]);
        };
        union() {
            // empty space
            translate([0,-1,thickness]) cube([tray_length, 3+2*tray_depth, tray_height+100]);
            
            // save some material
            //left
            //bottom
            translate([0,-1,-1]) cube([tray_length/2-10, 10, tray_height+100]);
            translate([0,25,-1]) cube([tray_length/2-10,30, tray_height+100]);
            translate([0,70,-1]) cube([tray_length/2-10, 10, tray_height+100]);
            
            //back
            translate([thickness,-thickness -1,2*thickness]) cube([10, 10, 65]);
            translate([4*thickness,-thickness -1,2*thickness]) cube([10, 10, 65]);
            translate([8*thickness,-thickness -1,2*thickness]) cube([10, 10, 65]);     
            translate([12*thickness,-thickness -1,2*thickness]) cube([10, 10, 65]);          
            
            translate([-thickness-1,tray_depth/2+10,2*thickness]) cube([10, 22, 65]);    

            // right
            // bottom
            translate([tray_length/2+10,-1,-1]) cube([tray_length/2-10, 10, tray_height+100]);
            translate([tray_length/2+10,25,-1]) cube([tray_length/2-10,30, tray_height+100]);
            translate([tray_length/2+10,70,-1]) cube([tray_length/2-10, 10, tray_height+100]);
            
            // back
            translate([20*thickness,-thickness -1,2*thickness]) cube([10, 10, 65]);
            translate([24*thickness,-thickness -1,2*thickness]) cube([10, 10, 65]);
            translate([28*thickness,-thickness -1,2*thickness]) cube([10, 10, 65]);
            translate([32*thickness,-thickness -1,2*thickness]) cube([10, 10, 65]);      
            
            translate([tray_length-1,tray_depth/2+10,2*thickness]) cube([10, 22, 65]); 
            
            //
            // holes for trays
            //
            
            // left
            // bottom
            translate([tray_length-1, tray_depth/2-5, 20])cube([hole_size,hole_size,hole_size]);
            translate([tray_length-1, tray_depth+tray_depth/2, 20])cube([hole_size,hole_size,hole_size]);
            
            //middle
            translate([tray_length-1, tray_depth/2-5, citadel_height-10])cube([hole_size,hole_size,hole_size]);
            translate([tray_length-1, tray_depth+tray_depth/2, citadel_height-10])cube([hole_size,hole_size,hole_size]);
            
            //top 
            translate([tray_length-1, tray_depth/2-5, vallejo_height-10])cube([hole_size,hole_size,hole_size]);
            translate([tray_length-1, tray_depth+tray_depth/2, vallejo_height-10])cube([hole_size,hole_size,hole_size]);            
            
            // right
            // bottom
            translate([-9, tray_depth/2-5, 20])cube([hole_size,hole_size,hole_size]);
            translate([-9, tray_depth + tray_depth/2, 20])cube([hole_size,hole_size,hole_size]);
            
            // middle
            translate([-9, tray_depth/2-5, citadel_height-10])cube([hole_size,hole_size,hole_size]);
            translate([-9, tray_depth + tray_depth/2, citadel_height-10])cube([hole_size,hole_size,hole_size]);
            
            // top
            translate([-9, tray_depth/2-5, vallejo_height-10])cube([hole_size,hole_size,hole_size]);
            translate([-9, tray_depth + tray_depth/2, vallejo_height-10])cube([hole_size,hole_size,hole_size]);

        };
    };
    
        // cut into two pieces 
        translate([-thickness-1,-1-thickness,-1-thickness])cube([tray_length/2+thickness/2,200,200]);

};
