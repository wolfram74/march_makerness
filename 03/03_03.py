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
###

### new subroutines
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

def ssupport():
	arch1 ,thet1, rad1= circle_arch(30.0, 5.0, 3)
	arch1 = solid.translate([14,-28/2,0])(solid.rotate([0,0, -thet1/2])(arch1))
	arch2 = solid.translate([0,0,1])(arch1)
	arch3 = solid.translate([0,0,-1])(arch1)
	arch1 = join_list([arch1, arch2, arch3])
	
	pillar1 = solid.rotate([0,90,0])(solid.cylinder(r=2, h=35) )
	pillar1 = pillar1 - solid.translate([-1,0,-3])(solid.cube([37,4, 8]))
	pillar2 = solid.rotate([180,0,0])(solid.translate([0,28])(pillar1))
	return join_list([arch1, pillar1, pillar2])
###
'''
components and thoughts
solid base to place books on
solid back to prevent things falling behind it
sides and roof are tiled in hexagons spaces to save on material
4 columns topped in a circular arch to bear most of the weight.
'''
out_file = make_output()
bord = 2
side = hexfield(4, bord, 4, 50, 50)
side = solid.cube([40,30,2])-side
frame = solid.cube([40,30,2])-solid.translate([2,2,-1])(solid.cube([36,26,4]))
side = side + frame

side2 =solid.rotate([0,-90,0])(side)
side = solid.translate([30,0,0])(solid.rotate([0,-90,0])(side))
sides = solid.color([.1,.1,.9])(side+side2)

base = solid.translate([-2,0,-2])(solid.cube([32,30,2]))
top = solid.translate([0,0,40])(base)
back = solid.translate([0,28,0])(solid.cube([28,2,38]))
panels = solid.color([.25,.25,.15])(base+top+back)

support1 = solid.rotate([0,-90,90])(ssupport())
support2 = solid.translate([0,7,0])(support1)
support1 = solid.translate([0,21,0])(support1)
supports = solid.color([.8, .1, .8])(support1 + support2)

cubby = join_list([sides, panels, supports])

shelf_list = []
for i in range(5):
	for j in range(4):
		shelf_list+= [solid.translate([32*i,0,42*j])(cubby)]
shelf = solid.translate([50,0,0])(join_list(shelf_list))

test_book = solid.color([1,0,0])(solid.translate([3,0,0])(solid.cube([5,21,26])))

fake_me = solid.translate([-50,-10,0])(mannequin())


object = [cubby, fake_me, test_book, shelf]

print>>out_file, solid.scad_render(join_list(object))

