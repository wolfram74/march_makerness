

union() {
	union() {
		translate(v = [16, 12, 4]) {
			rotate(a = [0, 180, 0]) {
				union() {
					union() {
						union() {
							color(c = [0, 0.7000000000, 0.1000000000]) {
								cube(size = [8.5000000000, 5.5000000000, 0.1000000000]);
							}
							color(c = [0.8196078431, 0.8196078431, 0.8196078431]) {
								translate(v = [-0.1000000000, 3.9000000000, 0]) {
									cube(size = [2.1000000000, 1.6000000000, 1.4000000000]);
								}
							}
						}
						union() {
							translate(v = [-0.7000000000, 1.9000000000, 0]) {
								color(c = [0.8196078431, 0.8196078431, 0.8196078431]) {
									cube(size = [1.7000000000, 1.3000000000, 1.5000000000]);
								}
							}
							translate(v = [1.5000000000, -0.5000000000, 0]) {
								color(c = [0, 0, 0]) {
									cube(size = [1.2000000000, 1.5000000000, 1.2000000000]);
								}
							}
						}
					}
					union() {
						union() {
							translate(v = [3.4000000000, -0.8000000000, 0]) {
								color(c = [1.0000000000, 0.7372549020, 0.2352941176]) {
									cube(size = [1, 1.9000000000, 1.5000000000]);
								}
							}
							translate(v = [3.4000000000, 4.6000000000, 0]) {
								color(c = [0.8196078431, 0.8196078431, 0.8196078431]) {
									cube(size = [1.5000000000, 1.1000000000, 0.9000000000]);
								}
							}
						}
						union() {
							translate(v = [5.3000000000, 0.1000000000, 0]) {
								color(c = [0, 0, 0]) {
									cube(size = [3.2000000000, 0.4000000000, 1.2000000000]);
								}
							}
							union() {
								translate(v = [6.7000000000, 1.6000000000, -0.4000000000]) {
									color(c = [0, 0, 0]) {
										cube(size = [1.8000000000, 2.9000000000, 0.4000000000]);
									}
								}
								translate(v = [7.9000000000, 4.5000000000, 0]) {
									color(c = [0, 0, 0]) {
										cube(size = [0.5000000000, 0.7000000000, 0.3000000000]);
									}
								}
							}
						}
					}
				}
			}
		}
		union() {
			color(c = "Gainsboro") {
				union() {
					rotate(a = [0, 90, 0]) {
						union() {
							union() {
								cylinder(h = 40, r = 4);
								sphere(r = 4);
							}
							translate(v = [0, 0, 40]) {
								sphere(r = 4);
							}
						}
					}
					translate(v = [0, 30, 0]) {
						rotate(a = [0, 90, 0]) {
							union() {
								union() {
									cylinder(h = 40, r = 4);
									sphere(r = 4);
								}
								translate(v = [0, 0, 40]) {
									sphere(r = 4);
								}
							}
						}
					}
				}
			}
			color(c = "Gray") {
				union() {
					union() {
						translate(v = [3, 0, 4]) {
							cube(size = [2, 30, 1]);
						}
						translate(v = [35, 0, 0]) {
							translate(v = [3, 0, 4]) {
								cube(size = [2, 30, 1]);
							}
						}
					}
					translate(v = [19, 0, 0]) {
						translate(v = [3, 0, 4]) {
							cube(size = [2, 30, 1]);
						}
					}
				}
			}
		}
	}
	union() {
		union() {
			translate(v = [0, 0, 5]) {
				union() {
					color(c = "Black") {
						cube(size = [40, 30, 1]);
					}
					union() {
						union() {
							translate(v = [9.5000000000, 0, 0]) {
								color(c = "Silver") {
									cube(size = [1, 30, 1.1000000000]);
								}
							}
							translate(v = [19.5000000000, 0, 0]) {
								color(c = "Silver") {
									cube(size = [1, 30, 1.1000000000]);
								}
							}
						}
						union() {
							translate(v = [29.5000000000, 0, 0]) {
								color(c = "Silver") {
									cube(size = [1, 30, 1.1000000000]);
								}
							}
							union() {
								translate(v = [0, 9.5000000000, 0]) {
									color(c = "Silver") {
										cube(size = [40, 1, 1.1000000000]);
									}
								}
								translate(v = [0, 19.5000000000, 0]) {
									color(c = "Silver") {
										cube(size = [40, 1, 1.1000000000]);
									}
								}
							}
						}
					}
				}
			}
			translate(v = [6, 4, 4]) {
				color(c = "Red") {
					cube(size = [8, 4, 1]);
				}
			}
		}
		union() {
			translate(v = [0, 18, 0]) {
				translate(v = [6, 4, 4]) {
					color(c = "Red") {
						cube(size = [8, 4, 1]);
					}
				}
			}
			color(c = "Blue") {
				union() {
					union() {
						translate(v = [3, 9.5000000000, 0]) {
							cube(size = [2, 1, 4]);
						}
						translate(v = [1, 8.5000000000, -2]) {
							cube(size = [4, 3, 2]);
						}
					}
					translate(v = [0, 10, 0]) {
						union() {
							translate(v = [3, 9.5000000000, 0]) {
								cube(size = [2, 1, 4]);
							}
							translate(v = [1, 8.5000000000, -2]) {
								cube(size = [4, 3, 2]);
							}
						}
					}
				}
			}
		}
	}
}
