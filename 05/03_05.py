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

###

### new subroutines



###
'''
heights
0-1, base
1-4, lighting
5-6 floor/pane
7-top, chamber
'''
out_file = make_output()
orange = t55_to_1([255,127,0])

battery = solid.color([1,0,0])(solid.cylinder(r=1,h=3))
battery += solid.color([0,0,0])(solid.translate([0,0,3])(solid.cylinder(r=1,h=3)))
battery = solid.translate([11,2,2])(solid.rotate([0,90,0])(battery))

led = solid.cylinder(r=1,h=1, segments = 20)
led += solid.translate([0,0,1])(solid.sphere(r=1, segments= 20))
wire = solid.cube([.2,.2,1])
led += solid.translate([-.1,.8,-1])(wire)+ solid.translate([-.1,-1,-1])(wire)
led = solid.color(orange)(led)
led2 = solid.translate([5,3,1.5])(led)
led = solid.translate([9,3,1.5])(led)

vessel = solid.cube([20,7,15])- solid.translate([1,1,1])(solid.cube([18,5,15]))
vessel -= solid.translate([1,-1,6])(solid.cube([18,3,10]))
vessel -= solid.translate([.5,.25,5.5])(solid.cube([19,.5,10]))
vessel -= solid.translate([1,1,1])(solid.cube([20,5,3]))
vessel -= solid.translate([.5,.5, 5.25])(solid.cube([20,6,.5]))
vessel = solid.color([0,.5,9])(vessel)

pane1 = solid.translate([.5,.25,5.5])(solid.cube([19,.5,9.5]))
pane2 = solid.translate([.5,.5, 5.25])(solid.cube([19.5,6,.5]))

panes = solid.color([1,1,1,.2])(pane1+pane2)


fake_me = solid.translate([-50,-10,0])(mannequin())

object = [fake_me, battery, led, led2, vessel, panes]


print>>out_file, solid.scad_render(join_list(object))

