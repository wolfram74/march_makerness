

rotate(a = [0, 90, 0]) {
	union() {
		union() {
			difference() {
				difference() {
					color(c = [0.4000000000, 0.4000000000, 0.4000000000]) {
						translate(v = [15, -2.5000000000, 0]) {
							cube(size = [10, 20, 123]);
						}
					}
					translate(v = [16, -1.5000000000, -1]) {
						cube(size = [8, 18, 125]);
					}
				}
				translate(v = [0, 0, 7]) {
					union() {
						union() {
							translate(v = [0, 0, 0]) {
								translate(v = [14, 7.5000000000, 10]) {
									rotate(a = [0, 90, 0]) {
										cylinder(h = 5, r = 8);
									}
								}
							}
							union() {
								translate(v = [0, 0, 18]) {
									translate(v = [14, 7.5000000000, 10]) {
										rotate(a = [0, 90, 0]) {
											cylinder(h = 5, r = 8);
										}
									}
								}
								translate(v = [0, 0, 36]) {
									translate(v = [14, 7.5000000000, 10]) {
										rotate(a = [0, 90, 0]) {
											cylinder(h = 5, r = 8);
										}
									}
								}
							}
						}
						union() {
							translate(v = [0, 0, 54]) {
								translate(v = [14, 7.5000000000, 10]) {
									rotate(a = [0, 90, 0]) {
										cylinder(h = 5, r = 8);
									}
								}
							}
							union() {
								translate(v = [0, 0, 72]) {
									translate(v = [14, 7.5000000000, 10]) {
										rotate(a = [0, 90, 0]) {
											cylinder(h = 5, r = 8);
										}
									}
								}
								translate(v = [0, 0, 90]) {
									translate(v = [14, 7.5000000000, 10]) {
										rotate(a = [0, 90, 0]) {
											cylinder(h = 5, r = 8);
										}
									}
								}
							}
						}
					}
				}
			}
			color(c = [0.4000000000, 0.4000000000, 0.4000000000]) {
				difference() {
					cube(size = [5, 15, 123]);
					translate(v = [1, 1, 1]) {
						cube(size = [5, 13, 121]);
					}
				}
			}
		}
		union() {
			color(c = [1, 1, 1]) {
				translate(v = [4, 4, 1]) {
					cylinder(h = 121, r = 2);
				}
			}
			union() {
				translate(v = [0, 6, 0]) {
					color(c = [1, 1, 1]) {
						translate(v = [4, 4, 1]) {
							cylinder(h = 121, r = 2);
						}
					}
				}
				translate(v = [0, 0, 7]) {
					union() {
						union() {
							translate(v = [0, 0, 0]) {
								translate(v = [22.5000000000, 7.5000000000, 10]) {
									rotate(a = [0, -90, 0]) {
										color(c = "SaddleBrown") {
											difference() {
												difference() {
													difference() {
														difference() {
															cylinder(h = 9, r = 8);
															translate(v = [0, 0, 2]) {
																cylinder(h = 9, r = 7);
															}
														}
														union() {
															union() {
																union() {
																	union() {
																		union() {
																			translate(v = [-5, -3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-5, -1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [-5, 1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-5, 3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		union() {
																			translate(v = [-3, -5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-3, -3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [-3, -1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-3, 1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
																union() {
																	union() {
																		union() {
																			translate(v = [-3, 3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-3, 5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [-1, -5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-1, -3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		union() {
																			translate(v = [-1, -1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-1, 1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [-1, 3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-1, 5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
															}
															union() {
																union() {
																	union() {
																		union() {
																			translate(v = [1, -5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [1, -3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [1, -1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [1, 1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		union() {
																			translate(v = [1, 3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [1, 5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [3, -5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [3, -3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
																union() {
																	union() {
																		union() {
																			translate(v = [3, -1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [3, 1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [3, 3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [3, 5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		union() {
																			translate(v = [5, -3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [5, -1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [5, 1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [5, 3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
															}
														}
													}
													union() {
														union() {
															union() {
																rotate(a = [0, 0, 0]) {
																	translate(v = [7, 0, 1.5000000000]) {
																		rotate(a = [0, 90, 0]) {
																			cylinder(h = 2, r = 0.5000000000);
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 30]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	rotate(a = [0, 0, 60]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
															}
															union() {
																rotate(a = [0, 0, 90]) {
																	translate(v = [7, 0, 1.5000000000]) {
																		rotate(a = [0, 90, 0]) {
																			cylinder(h = 2, r = 0.5000000000);
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 120]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	rotate(a = [0, 0, 150]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
															}
														}
														union() {
															union() {
																rotate(a = [0, 0, 180]) {
																	translate(v = [7, 0, 1.5000000000]) {
																		rotate(a = [0, 90, 0]) {
																			cylinder(h = 2, r = 0.5000000000);
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 210]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	rotate(a = [0, 0, 240]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
															}
															union() {
																rotate(a = [0, 0, 270]) {
																	translate(v = [7, 0, 1.5000000000]) {
																		rotate(a = [0, 90, 0]) {
																			cylinder(h = 2, r = 0.5000000000);
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 300]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	rotate(a = [0, 0, 330]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
															}
														}
													}
												}
												translate(v = [0, 0, 2]) {
													rotate(a = [0, 0, 15]) {
														union() {
															union() {
																union() {
																	rotate(a = [0, 0, 0]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 30]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 60]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 90]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 120]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 150]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
															union() {
																union() {
																	rotate(a = [0, 0, 180]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 210]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 240]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 270]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 300]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 330]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
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
								}
							}
							union() {
								translate(v = [0, 0, 18]) {
									translate(v = [22.5000000000, 7.5000000000, 10]) {
										rotate(a = [0, -90, 0]) {
											color(c = "SaddleBrown") {
												difference() {
													difference() {
														difference() {
															difference() {
																cylinder(h = 9, r = 8);
																translate(v = [0, 0, 2]) {
																	cylinder(h = 9, r = 7);
																}
															}
															union() {
																union() {
																	union() {
																		union() {
																			union() {
																				translate(v = [-5, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-5, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-5, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-5, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [-3, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-3, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-3, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-3, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																	union() {
																		union() {
																			union() {
																				translate(v = [-3, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-3, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-1, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-1, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [-1, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-1, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-1, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-1, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	union() {
																		union() {
																			union() {
																				translate(v = [1, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [1, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [1, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [1, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [1, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [1, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [3, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [3, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																	union() {
																		union() {
																			union() {
																				translate(v = [3, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [3, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [3, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [3, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [5, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [5, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [5, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [5, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
														}
														union() {
															union() {
																union() {
																	rotate(a = [0, 0, 0]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 30]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 60]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 90]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 120]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 150]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
															union() {
																union() {
																	rotate(a = [0, 0, 180]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 210]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 240]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 270]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 300]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 330]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
														}
													}
													translate(v = [0, 0, 2]) {
														rotate(a = [0, 0, 15]) {
															union() {
																union() {
																	union() {
																		rotate(a = [0, 0, 0]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 30]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 60]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 90]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 120]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 150]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																		}
																	}
																}
																union() {
																	union() {
																		rotate(a = [0, 0, 180]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 210]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 240]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 270]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 300]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 330]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
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
									}
								}
								translate(v = [0, 0, 36]) {
									translate(v = [22.5000000000, 7.5000000000, 10]) {
										rotate(a = [0, -90, 0]) {
											color(c = "SaddleBrown") {
												difference() {
													difference() {
														difference() {
															difference() {
																cylinder(h = 9, r = 8);
																translate(v = [0, 0, 2]) {
																	cylinder(h = 9, r = 7);
																}
															}
															union() {
																union() {
																	union() {
																		union() {
																			union() {
																				translate(v = [-5, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-5, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-5, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-5, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [-3, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-3, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-3, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-3, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																	union() {
																		union() {
																			union() {
																				translate(v = [-3, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-3, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-1, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-1, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [-1, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-1, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-1, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-1, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	union() {
																		union() {
																			union() {
																				translate(v = [1, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [1, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [1, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [1, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [1, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [1, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [3, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [3, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																	union() {
																		union() {
																			union() {
																				translate(v = [3, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [3, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [3, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [3, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [5, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [5, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [5, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [5, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
														}
														union() {
															union() {
																union() {
																	rotate(a = [0, 0, 0]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 30]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 60]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 90]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 120]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 150]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
															union() {
																union() {
																	rotate(a = [0, 0, 180]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 210]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 240]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 270]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 300]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 330]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
														}
													}
													translate(v = [0, 0, 2]) {
														rotate(a = [0, 0, 15]) {
															union() {
																union() {
																	union() {
																		rotate(a = [0, 0, 0]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 30]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 60]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 90]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 120]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 150]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																		}
																	}
																}
																union() {
																	union() {
																		rotate(a = [0, 0, 180]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 210]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 240]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 270]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 300]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 330]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
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
									}
								}
							}
						}
						union() {
							translate(v = [0, 0, 54]) {
								translate(v = [22.5000000000, 7.5000000000, 10]) {
									rotate(a = [0, -90, 0]) {
										color(c = "SaddleBrown") {
											difference() {
												difference() {
													difference() {
														difference() {
															cylinder(h = 9, r = 8);
															translate(v = [0, 0, 2]) {
																cylinder(h = 9, r = 7);
															}
														}
														union() {
															union() {
																union() {
																	union() {
																		union() {
																			translate(v = [-5, -3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-5, -1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [-5, 1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-5, 3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		union() {
																			translate(v = [-3, -5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-3, -3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [-3, -1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-3, 1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
																union() {
																	union() {
																		union() {
																			translate(v = [-3, 3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-3, 5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [-1, -5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-1, -3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		union() {
																			translate(v = [-1, -1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-1, 1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [-1, 3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [-1, 5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
															}
															union() {
																union() {
																	union() {
																		union() {
																			translate(v = [1, -5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [1, -3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [1, -1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [1, 1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		union() {
																			translate(v = [1, 3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [1, 5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [3, -5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [3, -3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
																union() {
																	union() {
																		union() {
																			translate(v = [3, -1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [3, 1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [3, 3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [3, 5, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		union() {
																			translate(v = [5, -3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [5, -1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																		union() {
																			translate(v = [5, 1, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																			translate(v = [5, 3, -1]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
															}
														}
													}
													union() {
														union() {
															union() {
																rotate(a = [0, 0, 0]) {
																	translate(v = [7, 0, 1.5000000000]) {
																		rotate(a = [0, 90, 0]) {
																			cylinder(h = 2, r = 0.5000000000);
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 30]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	rotate(a = [0, 0, 60]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
															}
															union() {
																rotate(a = [0, 0, 90]) {
																	translate(v = [7, 0, 1.5000000000]) {
																		rotate(a = [0, 90, 0]) {
																			cylinder(h = 2, r = 0.5000000000);
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 120]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	rotate(a = [0, 0, 150]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
															}
														}
														union() {
															union() {
																rotate(a = [0, 0, 180]) {
																	translate(v = [7, 0, 1.5000000000]) {
																		rotate(a = [0, 90, 0]) {
																			cylinder(h = 2, r = 0.5000000000);
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 210]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	rotate(a = [0, 0, 240]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
															}
															union() {
																rotate(a = [0, 0, 270]) {
																	translate(v = [7, 0, 1.5000000000]) {
																		rotate(a = [0, 90, 0]) {
																			cylinder(h = 2, r = 0.5000000000);
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 300]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	rotate(a = [0, 0, 330]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																}
															}
														}
													}
												}
												translate(v = [0, 0, 2]) {
													rotate(a = [0, 0, 15]) {
														union() {
															union() {
																union() {
																	rotate(a = [0, 0, 0]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 30]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 60]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 90]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 120]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 150]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
															union() {
																union() {
																	rotate(a = [0, 0, 180]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 210]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 240]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 270]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 300]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 330]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
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
								}
							}
							union() {
								translate(v = [0, 0, 72]) {
									translate(v = [22.5000000000, 7.5000000000, 10]) {
										rotate(a = [0, -90, 0]) {
											color(c = "SaddleBrown") {
												difference() {
													difference() {
														difference() {
															difference() {
																cylinder(h = 9, r = 8);
																translate(v = [0, 0, 2]) {
																	cylinder(h = 9, r = 7);
																}
															}
															union() {
																union() {
																	union() {
																		union() {
																			union() {
																				translate(v = [-5, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-5, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-5, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-5, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [-3, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-3, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-3, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-3, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																	union() {
																		union() {
																			union() {
																				translate(v = [-3, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-3, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-1, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-1, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [-1, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-1, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-1, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-1, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	union() {
																		union() {
																			union() {
																				translate(v = [1, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [1, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [1, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [1, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [1, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [1, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [3, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [3, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																	union() {
																		union() {
																			union() {
																				translate(v = [3, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [3, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [3, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [3, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [5, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [5, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [5, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [5, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
														}
														union() {
															union() {
																union() {
																	rotate(a = [0, 0, 0]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 30]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 60]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 90]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 120]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 150]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
															union() {
																union() {
																	rotate(a = [0, 0, 180]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 210]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 240]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 270]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 300]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 330]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
														}
													}
													translate(v = [0, 0, 2]) {
														rotate(a = [0, 0, 15]) {
															union() {
																union() {
																	union() {
																		rotate(a = [0, 0, 0]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 30]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 60]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 90]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 120]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 150]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																		}
																	}
																}
																union() {
																	union() {
																		rotate(a = [0, 0, 180]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 210]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 240]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 270]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 300]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 330]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
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
									}
								}
								translate(v = [0, 0, 90]) {
									translate(v = [22.5000000000, 7.5000000000, 10]) {
										rotate(a = [0, -90, 0]) {
											color(c = "SaddleBrown") {
												difference() {
													difference() {
														difference() {
															difference() {
																cylinder(h = 9, r = 8);
																translate(v = [0, 0, 2]) {
																	cylinder(h = 9, r = 7);
																}
															}
															union() {
																union() {
																	union() {
																		union() {
																			union() {
																				translate(v = [-5, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-5, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-5, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-5, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [-3, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-3, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-3, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-3, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																	union() {
																		union() {
																			union() {
																				translate(v = [-3, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-3, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-1, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-1, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [-1, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-1, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [-1, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [-1, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	union() {
																		union() {
																			union() {
																				translate(v = [1, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [1, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [1, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [1, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [1, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [1, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [3, -5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [3, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																	union() {
																		union() {
																			union() {
																				translate(v = [3, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [3, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [3, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [3, 5, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			union() {
																				translate(v = [5, -3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [5, -1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																			union() {
																				translate(v = [5, 1, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																				translate(v = [5, 3, -1]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
														}
														union() {
															union() {
																union() {
																	rotate(a = [0, 0, 0]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 30]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 60]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 90]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 120]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 150]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
															union() {
																union() {
																	rotate(a = [0, 0, 180]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 210]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 240]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
																union() {
																	rotate(a = [0, 0, 270]) {
																		translate(v = [7, 0, 1.5000000000]) {
																			rotate(a = [0, 90, 0]) {
																				cylinder(h = 2, r = 0.5000000000);
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 300]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		rotate(a = [0, 0, 330]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																	}
																}
															}
														}
													}
													translate(v = [0, 0, 2]) {
														rotate(a = [0, 0, 15]) {
															union() {
																union() {
																	union() {
																		rotate(a = [0, 0, 0]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 30]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 60]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 90]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 120]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 150]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																		}
																	}
																}
																union() {
																	union() {
																		rotate(a = [0, 0, 180]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 210]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 240]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																		}
																	}
																	union() {
																		rotate(a = [0, 0, 270]) {
																			translate(v = [7, 0, 1.5000000000]) {
																				rotate(a = [0, 90, 0]) {
																					cylinder(h = 2, r = 0.5000000000);
																				}
																			}
																		}
																		union() {
																			rotate(a = [0, 0, 300]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
																					}
																				}
																			}
																			rotate(a = [0, 0, 330]) {
																				translate(v = [7, 0, 1.5000000000]) {
																					rotate(a = [0, 90, 0]) {
																						cylinder(h = 2, r = 0.5000000000);
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
