include <sizes.scad>;
margin_y=(tray_depth - citadel_pot) /2;
margin_x=(tray_length - 5*citadel_pot)/15;

difference() {
    union() {
        // base 
        cube([tray_length, tray_depth, tray_height]);
        // connectors
        translate([-9, tray_depth/2-5, tray_height/2])cube([hole_size-0.5,hole_size-0.5,hole_size-0.5]);
        translate([tray_length-1, tray_depth/2-5, tray_height/2])cube([hole_size-0.5,hole_size-0.5,hole_size-0.5]);
    };
    
    // bottle holes
    for(x=[0:6])
        translate([margin_x + vallejo_radius + x*margin_x + x*vallejo_pot, citadel_radius + margin_y, 2])
            cylinder(r=vallejo_radius, h=vallejo_height);
    
    // holes to reduce material consumption
    for(x=[0:6])
        // @TODO remove magic numbers
        translate([-6+vallejo_radius + x*margin_x + x*vallejo_pot, citadel_radius + margin_y-50, 3.5])
            cube([15,100,18]);
};
