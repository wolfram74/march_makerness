

union() {
	color(c = [0, 0, 0]) {
		translate(v = [70, 0, 0]) {
			cylinder(h = 181, r = 10);
		}
	}
	color(c = [0.1000000000, 0.9000000000, 0.1000000000]) {
		union() {
			union() {
				translate(v = [0, 0, 84]) {
					union() {
						cylinder(h = 70, r = 15);
						union() {
							translate(v = [9, 0, 0]) {
								cylinder(h = 70, r = 15);
							}
							translate(v = [0, -15, 0]) {
								cube(size = [9, 30, 70]);
							}
						}
					}
				}
				translate(v = [-7, -13, 154]) {
					cube(size = [24, 24, 27]);
				}
			}
			union() {
				union() {
					translate(v = [-3, 0, 0]) {
						cylinder(h = 84, r = 5);
					}
					translate(v = [13, 0, 0]) {
						translate(v = [-3, 0, 0]) {
							cylinder(h = 84, r = 5);
						}
					}
				}
				union() {
					rotate(a = [0, 10, 0]) {
						translate(v = [-40, 0, 70]) {
							union() {
								union() {
									sphere(r = 4);
									translate(v = [0, 0, 4]) {
										cylinder(h = 68, r = 4);
									}
								}
								translate(v = [0, 0, 72]) {
									sphere(r = 4);
								}
							}
						}
					}
					rotate(a = [0, -10, 0]) {
						translate(v = [50, 0, 70]) {
							union() {
								union() {
									sphere(r = 4);
									translate(v = [0, 0, 4]) {
										cylinder(h = 68, r = 4);
									}
								}
								translate(v = [0, 0, 72]) {
									sphere(r = 4);
								}
							}
						}
					}
				}
			}
		}
	}
}
