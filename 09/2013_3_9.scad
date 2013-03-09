

difference() {
	union() {
		union() {
			union() {
				union() {
					difference() {
						translate(v = [0, 0, -0.5000000000]) {
							cylinder(h = 7.5000000000, r = 12.2231839973);
						}
						cylinder(h = 8, r = 11.2231839973);
					}
					color(c = [0.9333333333, 0.8666666667, 0.5098039216]) {
						rotate(a = [0, 0, -70]) {
							translate(v = [11.7231839973, 0, 5]) {
								sphere(r = 2.4830855626, $fn = 60);
							}
						}
					}
				}
				union() {
					difference() {
						translate(v = [0, 0, -0.5000000000]) {
							cylinder(h = 7.5000000000, r = 34.6400961010);
						}
						cylinder(h = 8, r = 33.6400961010);
					}
					color(c = [1.0000000000, 0.6470588235, 0.0000000000]) {
						rotate(a = [0, 0, 30]) {
							translate(v = [34.1400961010, 0, 5]) {
								sphere(r = 3.4348825811, $fn = 60);
							}
						}
					}
				}
			}
			union() {
				union() {
					difference() {
						translate(v = [0, 0, -0.5000000000]) {
							cylinder(h = 7.5000000000, r = 28.3705748085);
						}
						cylinder(h = 8, r = 27.3705748085);
					}
					color(c = [0.9607843137, 0.8705882353, 0.7019607843]) {
						rotate(a = [0, 0, 10]) {
							translate(v = [27.8705748085, 0, 5]) {
								sphere(r = 3.4896450839, $fn = 60);
							}
						}
					}
				}
				union() {
					difference() {
						translate(v = [0, 0, -0.5000000000]) {
							cylinder(h = 7.5000000000, r = 43.5639000707);
						}
						cylinder(h = 8, r = 42.5639000707);
					}
					union() {
						color(c = [0.0000000000, 1.0000000000, 1.0000000000]) {
							rotate(a = [0, 0, 50]) {
								translate(v = [43.0639000707, 0, 5]) {
									sphere(r = 3.1854930883, $fn = 60);
								}
							}
						}
						difference() {
							translate(v = [0, 0, -0.5000000000]) {
								cylinder(h = 7.5000000000, r = 16.5650278557);
							}
							cylinder(h = 8, r = 15.5650278557);
						}
					}
				}
			}
		}
		union() {
			union() {
				union() {
					color(c = [0.0000000000, 0.7490196078, 1.0000000000]) {
						rotate(a = [0, 0, -30]) {
							translate(v = [16.0650278557, 0, 5]) {
								sphere(r = 2.7707982157, $fn = 60);
							}
						}
					}
					difference() {
						translate(v = [0, 0, -0.5000000000]) {
							cylinder(h = 7.5000000000, r = 0.5000000000);
						}
						cylinder(h = 8, r = -0.5000000000);
					}
				}
				union() {
					color(c = [1.0000000000, 1.0000000000, 0.0000000000]) {
						rotate(a = [0, 0, -90]) {
							translate(v = [0.0000000000, 0, 5]) {
								sphere(r = 4.1790121378, $fn = 60);
							}
						}
					}
					union() {
						difference() {
							translate(v = [0, 0, -0.5000000000]) {
								cylinder(h = 7.5000000000, r = 14.9309186543);
							}
							cylinder(h = 8, r = 13.9309186543);
						}
						color(c = [0.7411764706, 0.7176470588, 0.4196078431]) {
							rotate(a = [0, 0, -50]) {
								translate(v = [14.4309186543, 0, 5]) {
									sphere(r = 2.7567015786, $fn = 60);
								}
							}
						}
					}
				}
			}
			union() {
				union() {
					difference() {
						translate(v = [0, 0, -0.5000000000]) {
							cylinder(h = 7.5000000000, r = 19.0124689221);
						}
						cylinder(h = 8, r = 18.0124689221);
					}
					color(c = [0.6980392157, 0.1333333333, 0.1333333333]) {
						rotate(a = [0, 0, -10]) {
							translate(v = [18.5124689221, 0, 5]) {
								sphere(r = 2.5817016038, $fn = 60);
							}
						}
					}
				}
				union() {
					difference() {
						translate(v = [0, 0, -0.5000000000]) {
							cylinder(h = 7.5000000000, r = 50.5292007408);
						}
						cylinder(h = 8, r = 49.5292007408);
					}
					union() {
						color(c = [0.0000000000, 0.0000000000, 0.8039215686]) {
							rotate(a = [0, 0, 70]) {
								translate(v = [50.0292007408, 0, 5]) {
									sphere(r = 3.1766187673, $fn = 60);
								}
							}
						}
						translate(v = [0, -60, 0]) {
							color(c = [0, 0, 0]) {
								cube(size = [60, 120, 5]);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [-60, -60, -3]) {
		cube(size = [60, 120, 14]);
	}
}
