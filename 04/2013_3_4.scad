

union() {
	union() {
		translate(v = [-50, -10, 0]) {
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
						translate(v = [-8, -13, 154]) {
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
		union() {
			color(c = [0.5490196078, 0.3137254902, 0.1294117647]) {
				translate(v = [0, 0, 15]) {
					difference() {
						difference() {
							cube(size = [120, 70, 20]);
							translate(v = [43, -1, 3]) {
								cube(size = [81, 72, 14]);
							}
						}
						translate(v = [-1, 3, 3]) {
							cube(size = [40, 64, 14]);
						}
					}
				}
			}
			color(c = [0, 0, 0]) {
				union() {
					union() {
						translate(v = [8, 8, 0]) {
							cylinder(h = 15, r = 4);
						}
						translate(v = [8, 62, 0]) {
							cylinder(h = 15, r = 4);
						}
					}
					union() {
						translate(v = [112, 8, 0]) {
							cylinder(h = 15, r = 4);
						}
						translate(v = [112, 62, 0]) {
							cylinder(h = 15, r = 4);
						}
					}
				}
			}
		}
	}
	union() {
		translate(v = [100, 35, 15]) {
			color(c = [0, 0, 0]) {
				cylinder(h = 19, r = 5);
			}
		}
		union() {
			translate(v = [0, 0, 35]) {
				color(c = [1, 1, 1, 0.3000000000]) {
					cube(size = [120, 70, 3]);
				}
			}
			translate(v = [-10, 3, 18]) {
				color(c = [0.1000000000, 0.1000000000, 0.9000000000]) {
					union() {
						union() {
							difference() {
								cube(size = [40, 64, 13]);
								translate(v = [1, 1, 1]) {
									cube(size = [38, 62, 15]);
								}
							}
							cube(size = [2, 64, 14]);
						}
						translate(v = [13, 32, 7]) {
							rotate(a = [0, 0, 135]) {
								difference() {
									difference() {
										circle(r = 19);
										rotate(a = 0) {
											translate(v = [0, -19, 0]) {
												square(center = true, size = [57, 38]);
											}
										}
										rotate(a = -90.0000000000) {
											translate(v = [0, -19, 0]) {
												square(center = true, size = [57, 38]);
											}
										}
									}
									difference() {
										circle(r = 17);
										rotate(a = -1) {
											translate(v = [0, -17, 0]) {
												square(center = true, size = [51, 34]);
											}
										}
										rotate(a = -89.0000000000) {
											translate(v = [0, -17, 0]) {
												square(center = true, size = [51, 34]);
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}
