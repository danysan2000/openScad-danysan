a = 1;
b = 2;
c = 3;
echo(a, b, c);

let (a = 5, b = a + 8, c = a + b) {
	echo(a, b, c);
	difference() {
		cube([a, b, c], center = true);
		//trailing comma test
		let (b = 2 * a, c = b * 2,) {
			echo(a, b, c);
			rotate([0, 90, 0])
				cylinder(d = b, h = c, center = true);
		}
	}
}
