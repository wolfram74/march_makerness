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

###

### new subroutines

def t55_to_1(color):
	r = float(color[0])/255
	g = float(color[1])/255
	b = float(color[2])/255
	return [r,g,b]


###

out_file = make_output()

clearance = 15
width = 70
length = 120
thick = 20
depth = 40

leg1 = solid.translate([8,8,0])(solid.cylinder(r=4, h=clearance))
leg2 = solid.translate([8,width-8,0])(solid.cylinder(r=4, h=clearance))
leg3 = solid.translate([length-8,8,0])(solid.cylinder(r=4, h=clearance))
leg4 = solid.translate([length-8,width-8,0])(solid.cylinder(r=4, h=clearance))
legs = join_list([leg1, leg2, leg3, leg4])
legs = solid.color([0,0,0])(legs)

table = solid.cube([length,width,thick])
table -= solid.translate([depth+3,-1,3])(solid.cube([length+1-depth ,width+2,thick-6]))
table -= solid.translate([-1,3,3])(solid.cube([depth,width-6,thick-6]))
table = solid.translate([0,0,clearance])(table)
table = solid.color(t55_to_1([140,80,33]))(table)

mid = solid.translate([length-20,width/2,clearance])(solid.color([0,0,0])(solid.cylinder(r=5,h=thick-1)))
glass = solid.translate([0,0,clearance+thick])(solid.color([1,1,1,.3])(solid.cube([length,width,3])))

drawer = solid.cube([depth,width-6, thick-7 ])
drawer -= solid.translate([1,1,1])(solid.cube([depth-2, width-8, thick-5]))
drawer += solid.cube([2,width-6, thick-6])

handle, theth, rh  = circle_arch(30, 7, 2)
handle = solid.translate([13,width/2-3, thick/2-3])(solid.rotate([0,0,90+45])(handle))

drawer+= handle

drawer = solid.translate([-10,3,clearance+3])(solid.color([.1,.1,.9])(drawer))

fake_me = solid.translate([-50,-10,0])(mannequin())

object = [fake_me, table+legs, mid, glass, drawer]


print>>out_file, solid.scad_render(join_list(object))

