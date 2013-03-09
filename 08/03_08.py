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
def sgrip_segment():
	ring = solid.translate([21,0,0])(solid.circle(4))
	ring = solid.rotate_extrude()(ring)
	cylin = solid.translate([0,0,4])(solid.cylinder(r=25, h=24))
	seg = ring+cylin
	return seg

def spommel():
	top = solid.cylinder(r1 = 35, r2= 25, h = 37)
	bottom = solid.cylinder(r1 = 17,r2 = 28, h = 37)
	'''
	slope is 3.36
	'''
	ridge = solid.cylinder(r = 3,h = 38.6)
	ridges = []
	for i in range(12):
		ri = solid.translate([17,0,0])(solid.rotate([0,16.5,0])(ridge))
		ridges  += [solid.rotate([0,0,i*30])(ri)]
	bottom += join_list(ridges)
	shear1 = solid.cube([80,80,8])
# 	bottom -= solid.translate([-40,-40,37])(shear1)
# 	bottom -= solid.translate([-40,-40,8])(shear1)
	pommel = top + solid.translate([0,0,-37])(bottom)
	return pommel
	
def guard():
	r1=25
	width =150
	
	r1=solid.rotate_extrude()(solid.translate([89,0,0])(solid.circle(12.5)))
	r2=solid.rotate_extrude()(solid.translate([111,0,0])(solid.circle(12.5)))
	r3=solid.rotate_extrude()(solid.translate([133,0,0])(solid.circle(12.5)))
	wings = join_list([r1,r2,r3])
	wings -= solid.translate([-200,-200, -40])(solid.cube([200,400,80]))
	wings -= solid.translate([250,0,-50])(solid.cylinder(r=165, h=100))

	return wings

def dec():
	base = solid.cylinder(r = 37.5, h= 4)
	dome = solid.sphere( r = 37)
	dome -= solid.translate([-80,-80,-80])(solid.cube([160,160,80]))
	dome = solid.translate([0,0,4])(dome)
	db = solid.color(edgecol)(dome+base)
	gem = solid.cylinder(r1 =25, r2 =0, h=65)
	gem += solid.translate([0,0,-10])(solid.cylinder(r1 =20, r2= 25, h=10)) 
	gem = solid.translate([0,0,40])(gem)
	return db + gem

def sblade():
	ful1=solid.translate([0,-25,-2.5])(solid.cube([100,50,5]))
	ful2=solid.translate([100,-50,-2.5])(solid.cube([25,100,5]))
	ful3=solid.translate([125,-37.5,-2.5])(solid.cube([800,75,5]))
	fuller = solid.color(fulcol)(join_list([ful1, ful2, ful3]))
	return fuller
###

out_file = make_output()

fulcol = t55_to_1([78, 70, 154])
crossguardcol = t55_to_1([104, 96, 116])
gripcol = t55_to_1([137, 135, 157])
edgecol = t55_to_1([160, 181, 183])

# pom1 = pass
# pomh = pass
# pom2 = pass
gripr = 2.5
gripl = 22.5
gripringr = .8
gripsegl =2.4

seg_list = []
for i in range(7):
	seg_list+= [solid.translate([0,0,32*i])(sgrip_segment())]


grip = solid.color(gripcol)(join_list(seg_list))
pom = solid.color(gripcol)(solid.translate([0,0,-37])(spommel()))
cross_guard = solid.color( crossguardcol )( guard() )
cross_guard = solid.rotate([0,90,0])(cross_guard)
cross_guard = solid.translate([0,0,90+224])(cross_guard)

jewel = solid.translate([0,0,32*7-4])(dec())

blade = solid.rotate([0,-90,0])(solid.translate([32*7+38,0,0])(sblade()))

object = [grip, pom, cross_guard, jewel, blade]


print>>out_file, solid.scad_render(join_list(object))

