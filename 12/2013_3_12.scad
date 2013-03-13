

union() {
	color(c = [0.4000000000, 0.4000000000, 0.4000000000]) {
		cube(size = [30, 20, 2]);
	}
	union() {
		color(c = [0, 0, 0]) {
			translate(v = [30, 20, -3]) {
				rotate(a = [90, 90, 0]) {
					union() {
						translate(v = [0, 0, 4]) {
							union() {
								difference() {
									difference() {
										circle(r = 5);
										rotate(a = 0) {
											translate(v = [0, -5, 0]) {
												square(center = true, size = [15, 10]);
											}
										}
										rotate(a = 0) {
											translate(v = [0, -5, 0]) {
												square(center = true, size = [15, 10]);
											}
										}
									}
									difference() {
										circle(r = 4);
										rotate(a = 0) {
											translate(v = [0, -4, 0]) {
												square(center = true, size = [12, 8]);
											}
										}
										rotate(a = 0) {
											translate(v = [0, -4, 0]) {
												square(center = true, size = [12, 8]);
											}
										}
									}
								}
								union() {
									translate(v = [0, 0, 6]) {
										difference() {
											difference() {
												circle(r = 5);
												rotate(a = 0) {
													translate(v = [0, -5, 0]) {
														square(center = true, size = [15, 10]);
													}
												}
												rotate(a = 0) {
													translate(v = [0, -5, 0]) {
														square(center = true, size = [15, 10]);
													}
												}
											}
											difference() {
												circle(r = 4);
												rotate(a = 0) {
													translate(v = [0, -4, 0]) {
														square(center = true, size = [12, 8]);
													}
												}
												rotate(a = 0) {
													translate(v = [0, -4, 0]) {
														square(center = true, size = [12, 8]);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 6]) {
										translate(v = [0, 0, 6]) {
											difference() {
												difference() {
													circle(r = 5);
													rotate(a = 0) {
														translate(v = [0, -5, 0]) {
															square(center = true, size = [15, 10]);
														}
													}
													rotate(a = 0) {
														translate(v = [0, -5, 0]) {
															square(center = true, size = [15, 10]);
														}
													}
												}
												difference() {
													circle(r = 4);
													rotate(a = 0) {
														translate(v = [0, -4, 0]) {
															square(center = true, size = [12, 8]);
														}
													}
													rotate(a = 0) {
														translate(v = [0, -4, 0]) {
															square(center = true, size = [12, 8]);
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [1, -0.5000000000, 0]) {
							cube(size = [4, 1, 20]);
						}
					}
				}
			}
		}
		color(c = [0, 0, 0.8000000000]) {
			translate(v = [5, 0, -18]) {
				rotate(a = [-90, -90, 0]) {
					translate(v = [0, 0, 5]) {
						union() {
							union() {
								difference() {
									difference() {
										circle(r = 20);
										rotate(a = 0) {
											translate(v = [0, -20, 0]) {
												square(center = true, size = [60, 40]);
											}
										}
										rotate(a = -90) {
											translate(v = [0, -20, 0]) {
												square(center = true, size = [60, 40]);
											}
										}
									}
									difference() {
										circle(r = 17);
										rotate(a = 0) {
											translate(v = [0, -17, 0]) {
												square(center = true, size = [51, 34]);
											}
										}
										rotate(a = 0) {
											translate(v = [0, -17, 0]) {
												square(center = true, size = [51, 34]);
											}
										}
									}
								}
								translate(v = [0, 18, -1.5000000000]) {
									cube(size = [20, 2, 3]);
								}
							}
							translate(v = [0, 0, 10]) {
								union() {
									difference() {
										difference() {
											circle(r = 20);
											rotate(a = 0) {
												translate(v = [0, -20, 0]) {
													square(center = true, size = [60, 40]);
												}
											}
											rotate(a = -90) {
												translate(v = [0, -20, 0]) {
													square(center = true, size = [60, 40]);
												}
											}
										}
										difference() {
											circle(r = 17);
											rotate(a = 0) {
												translate(v = [0, -17, 0]) {
													square(center = true, size = [51, 34]);
												}
											}
											rotate(a = 0) {
												translate(v = [0, -17, 0]) {
													square(center = true, size = [51, 34]);
												}
											}
										}
									}
									translate(v = [0, 18, -1.5000000000]) {
										cube(size = [20, 2, 3]);
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
