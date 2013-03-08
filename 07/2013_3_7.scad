

union() {
	union() {
		rotate(a = [0, 0, 0]) {
			intersection() {
				rotate_extrude(convexity = 20) {
					polygon(paths = [[0, 1, 2, 3]], points = [[0, 0], [50, 50], [49.9000000000, 50], [0, 0.1000000000]]);
				}
				rotate(a = [0, 0, 0]) {
					translate(v = [0, 0, 5]) {
						cube(center = true, size = [50, 50, 0.1000000000]);
					}
				}
			}
		}
		translate(v = [4, 0, 0]) {
			rotate(a = [0, -30, 0]) {
				intersection() {
					rotate_extrude(convexity = 20) {
						polygon(paths = [[0, 1, 2, 3]], points = [[0, 0], [50, 50], [49.9000000000, 50], [0, 0.1000000000]]);
					}
					rotate(a = [0, 30, 0]) {
						translate(v = [0, 0, 5]) {
							cube(center = true, size = [50, 50, 0.1000000000]);
						}
					}
				}
			}
		}
	}
	union() {
		translate(v = [5, 0, 0]) {
			rotate(a = [0, -45, 0]) {
				intersection() {
					rotate_extrude(convexity = 20) {
						polygon(paths = [[0, 1, 2, 3]], points = [[0, 0], [50, 50], [49.9000000000, 50], [0, 0.1000000000]]);
					}
					rotate(a = [0, 45, 0]) {
						translate(v = [0, 0, 5]) {
							cube(center = true, size = [50, 50, 0.1000000000]);
						}
					}
				}
			}
		}
		translate(v = [6.5000000000, 0, 0]) {
			rotate(a = [0, -60, 0]) {
				intersection() {
					rotate_extrude(convexity = 20) {
						polygon(paths = [[0, 1, 2, 3]], points = [[0, 0], [50, 50], [49.9000000000, 50], [0, 0.1000000000]]);
					}
					rotate(a = [0, 60, 0]) {
						translate(v = [0, 0, 5]) {
							cube(center = true, size = [50, 50, 0.1000000000]);
						}
					}
				}
			}
		}
	}
}
