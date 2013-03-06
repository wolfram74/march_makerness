

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
			translate(v = [11, 2, 2]) {
				rotate(a = [0, 90, 0]) {
					union() {
						color(c = [1, 0, 0]) {
							cylinder(h = 3, r = 1);
						}
						color(c = [0, 0, 0]) {
							translate(v = [0, 0, 3]) {
								cylinder(h = 3, r = 1);
							}
						}
					}
				}
			}
			translate(v = [9, 3, 1.5000000000]) {
				color(c = [1.0000000000, 0.4980392157, 0.0000000000]) {
					union() {
						union() {
							cylinder($fn = 20, h = 1, r = 1);
							translate(v = [0, 0, 1]) {
								sphere(r = 1, $fn = 20);
							}
						}
						union() {
							translate(v = [-0.1000000000, 0.8000000000, -1]) {
								cube(size = [0.2000000000, 0.2000000000, 1]);
							}
							translate(v = [-0.1000000000, -1, -1]) {
								cube(size = [0.2000000000, 0.2000000000, 1]);
							}
						}
					}
				}
			}
		}
	}
	union() {
		translate(v = [5, 3, 1.5000000000]) {
			color(c = [1.0000000000, 0.4980392157, 0.0000000000]) {
				union() {
					union() {
						cylinder($fn = 20, h = 1, r = 1);
						translate(v = [0, 0, 1]) {
							sphere(r = 1, $fn = 20);
						}
					}
					union() {
						translate(v = [-0.1000000000, 0.8000000000, -1]) {
							cube(size = [0.2000000000, 0.2000000000, 1]);
						}
						translate(v = [-0.1000000000, -1, -1]) {
							cube(size = [0.2000000000, 0.2000000000, 1]);
						}
					}
				}
			}
		}
		union() {
			color(c = [0, 0.5000000000, 9]) {
				difference() {
					difference() {
						difference() {
							difference() {
								difference() {
									cube(size = [20, 7, 15]);
									translate(v = [1, 1, 1]) {
										cube(size = [18, 5, 15]);
									}
								}
								translate(v = [1, -1, 6]) {
									cube(size = [18, 3, 10]);
								}
							}
							translate(v = [0.5000000000, 0.2500000000, 5.5000000000]) {
								cube(size = [19, 0.5000000000, 10]);
							}
						}
						translate(v = [1, 1, 1]) {
							cube(size = [20, 5, 3]);
						}
					}
					translate(v = [0.5000000000, 0.5000000000, 5.2500000000]) {
						cube(size = [20, 6, 0.5000000000]);
					}
				}
			}
			color(c = [1, 1, 1, 0.2000000000]) {
				union() {
					translate(v = [0.5000000000, 0.2500000000, 5.5000000000]) {
						cube(size = [19, 0.5000000000, 9.5000000000]);
					}
					translate(v = [0.5000000000, 0.5000000000, 5.2500000000]) {
						cube(size = [19.5000000000, 6, 0.5000000000]);
					}
				}
			}
		}
	}
}
