// Chaac enclosure lid: parametric, with the emblem raised on top
// License: CC BY-SA 4.0

lid_w       = 120;   // mm
lid_d       = 90;    // mm
lid_t       = 3;     // plate thickness
lip_h       = 4;     // inner lip height
lip_wall    = 1.6;
clearance   = 0.3;   // fit tolerance
corner_r    = 4;

emblem_size = 50;    // emblem width (mm)
emblem_h    = 1.2;   // relief height
emblem_file = "../../branding/chaac_glyph.svg";
show_emblem = true;  // set false until the SVG exists

module rounded_plate(w, d, h, r) {
  linear_extrude(h)
    offset(r) offset(-r) square([w, d], center = true);
}

// Plate
rounded_plate(lid_w, lid_d, lid_t, corner_r);

// Inner lip (fits inside the box)
translate([0, 0, -lip_h])
  difference() {
    rounded_plate(lid_w - 2*clearance - 2*lip_wall, lid_d - 2*clearance - 2*lip_wall, lip_h, corner_r);
    translate([0, 0, -0.01])
      rounded_plate(lid_w - 2*clearance - 4*lip_wall, lid_d - 2*clearance - 4*lip_wall, lip_h + 0.02, corner_r);
  }

// Emblem (print in a second colour with a filament change at z = lid_t)
if (show_emblem)
  translate([0, 0, lid_t])
    linear_extrude(emblem_h)
      resize([emblem_size, 0], auto = true)
        import(emblem_file, center = true);
