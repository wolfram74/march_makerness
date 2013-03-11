import solid
import urllib, re, os, datetime, sys, lxml
import math
import numpy
import solid.utils

### old subroutines
def make_output():
	top_dir = sys.path[0]
	date = date_to_string(datetime.date.today())
	
	return open(os.path.join(top_dir,date)+".scad","w")

def date_to_string(date):
	year = date.year
	month = date.month
	day = date.day
	return "%r_%r_%r" % (year,month,day)

def join_list(list):
	if len(list)<=1:
		return list[0]
	L= len(list)
	lista=join_list(list[:L/2])
	listb=join_list(list[L/2:])
	return lista+listb

def strunk():
	c1 = solid.cylinder(r= 15, h = 70)
	c2 = solid.translate([9,0,0])(solid.cylinder(r=15, h= 70))
	m1 = solid.translate([0,-15,0])(solid.cube([9,30,70]))
	total = join_list([c1,c2,m1])
	total = solid.translate([0,0,84])(total)
	return total

def slegs():
	l1= solid.translate([-3,0,0])(solid.cylinder(r=5, h= 84))
	l2= solid.translate([13,0,0])(l1)
	out = l1+l2
	return out

def sarms():
	hand = solid.sphere(r=4)
	arm = solid.translate([0,0,4])( solid.cylinder(r=4, h = 68))
	shoulder = solid.translate([0,0,72])( solid.sphere(r=4))
	a1 = hand+arm+shoulder
	a2 = solid.translate([50,0,70])(a1)
	a1 = solid.translate([-40,0,70])(a1)
	a1 = solid.rotate([0,10,0])(a1)
	a2 = solid.rotate([0,-10,0])(a2)
	return a1+a2
	
def shead():
	head = solid.translate([-8,-13,181-27])(solid.cube([24,24,27]))
	return head

def mannequin():
	trunk = strunk()
	legs = slegs()
	head = shead()
	arms = sarms()
	body = [trunk, head, legs, arms]
	body = solid.color([.1,.9,.1])(join_list(body))
	return body

def hexfield(R, sep, thick, xmax, ymax):
	list = []
	h1=numpy.array((0,1,0))
	h2=numpy.array((.5*3**.5,-.5,0))
	total = R * 3**.5 + sep
	i=0
	j=0
	move = h1*j*total+h2*i*total
	while move[0] <= xmax:	
		while move[1] <= ymax:
			list_move = numpy_to_list(move)
			hex = solid.cylinder(r=R, h=thick, segments=6)
			hex = solid.translate(list_move)(hex)
			list +=[hex]
			j+=1
			move = h1*j*total+h2*i*total
			#print move
		i+=1
		j=0
		move = h1*j*total+h2*i*total
	field = join_list(list)
	field = solid.translate([0,0,-1])(field)
	return field

def numpy_to_list(vector):
	out= []
	for i in vector:
		out+=[i]
	return out

def circle_arch(width,height,thick):
	# exploiting properties of the sagitta/versine, or height
	r = width**2/(8*height) + height/2
	degi = 0
	# exploiting regular polygons
	r_in = r-height
	degf = 2 * math.atan( width / (2* r_in))
	degf = math.degrees(degf)
	arc1 = solid.utils.arc( rad =r, start_degrees = degi, end_degrees = degf)
	arc2 = solid.utils.arc( rad =r-thick, start_degrees = degi-1, end_degrees = degf+1)
	arch = arc1-arc2
	return arch, degf, r

def t55_to_1(color):
	r = float(color[0])/255
	g = float(color[1])/255
	b = float(color[2])/255
	return [r,g,b]

def rasp_pi():
	base = solid.color([0,.7,.1])(solid.cube([8.5,5.5,.1]))
	metal = t55_to_1([209,209,209])
	yellow = t55_to_1([255, 188, 60])

	ether = solid.translate([-0.1,3.9,0])(solid.cube([2.1,1.6,1.4]))
	ether = solid.color(metal)(ether)

	usb = solid.cube([1.7,1.3,1.5])
	usb = solid.translate([-.7,1.9,0])(solid.color(metal)(usb))
	
	audio = solid.cube([1.2, 1.5, 1.2])
	audio = solid.translate([1.5,-.5,0])(solid.color([0,0,0])(audio))
	
	tv = solid.cube([1,1.9,1.5])
	tv = solid.translate([3.4,-.8,0])(solid.color(yellow)(tv))	
	
	hdmi = solid.cube([1.5,1.1,.9])
	hdmi = solid.translate([3.4,4.6,0])(solid.color(metal)(hdmi))
	
	gpio = solid.cube([3.2,.4,1.2])
	gpio = solid.translate([5.3,.1,0])(solid.color([0,0,0])(gpio))
	
	sdcard = solid.cube([1.8,2.9,.4])
	sdcard = solid.translate([6.7, 1.6, -.4])(solid.color([0,0,0])(sdcard))
	
	musb = solid.cube([.5,.7,.3])
	musb = solid.translate([7.9, 4.5, 0])(solid.color([0,0,0])(musb))
	
	out = [base, ether, usb, audio, tv, hdmi, gpio, sdcard, musb]
	return join_list(out)

def conic_section(theta):
	line = solid.polygon(points = [[0,0],[50,50],[49.9,50],[0,.1]])
	cone = solid.rotate_extrude( convexity = 20)(line)
	
	plane = solid.translate([0,0,5])(solid.cube([50,50,.1],center = True))
	plane = solid.rotate([0,theta,0])(plane)
	
	section = solid.rotate([0,-1*theta, 0])(solid.intersection()(cone, plane))
	return section


###

### new subroutines

def splanter():
	bucket = solid.cylinder( r= 8, h= 9)- solid.translate([0,0,2])(solid.cylinder(r=7, h=9))
	hole = solid.cylinder(r=.5, h= 2)
	bottom_holes = []
	for i in range(10):
		for j in range(10):
			x= 2*i-7
			y= 2*j - 7
			if x**2 + y**2<(6.5)**2:
				bottom_holes+=[solid.translate([x,y,-1])(hole)]
	bucket -= join_list(bottom_holes)
	wall_holes = []
	wallh = solid.translate([7,0,1.5])(solid.rotate([0,90,0])(hole))
	for i in range(12):
		wall_holes += [solid.rotate([0,0,i*30])(wallh)]
	wall_ho = join_list(wall_holes)
	bucket -= wall_ho
	bucket -= solid.translate([0,0,2])(solid.rotate([0,0,15])(wall_ho))
	bucket = solid.color("SaddleBrown")(bucket)
	return bucket
###
out_file = make_output()
'''
light measurements
123 cm long
15 cm wide
5 cm tall
1:30 slope, or 6 degree slant.
'''
light = solid.cube([5,15,123])- solid.translate([1,1,1])(solid.cube([5,13,121]))
light = solid.color([.4,.4,.4])(light)
tube1 = solid.color([1,1,1])(solid.translate([4,4,1])(solid.cylinder(r=2, h=121)))
tube2 = solid.translate([0,6,0])(tube1)

trough = solid.color([.4,.4,.4])(solid.translate([15,-2.5,0])(solid.cube([10,20,123])))
trough -= solid.translate([16,-1.5,-1])(solid.cube([8,18,125]))

thole = solid.translate([14,7.5,10])(solid.rotate([0,90,0])(solid.cylinder(r=8, h = 5) ))
tslots = []
for i in range(6):
	tslots += [solid.translate([0,0,i*18])(thole)]
trough -= solid.translate([0,0,7])(join_list(tslots))

bucket = solid.translate([22.5,7.5,10])(solid.rotate([0,-90,0])(splanter()))
bslots = []
for i in range(6):
	bslots += [solid.translate([0,0,i*18])(bucket)]

planters = join_list(bslots)
planters = solid.translate([0,0,7])(planters)

object = [trough, light, tube1, tube2, planters]

rack = join_list(object)
rack = solid.rotate([0,90,0])(rack)

print>>out_file, solid.scad_render(rack)

