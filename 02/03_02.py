import solid
import urllib, re, os, datetime, sys, lxml
import math
import numpy

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
'''
components and thoughts
solid base to place books on
solid back to prevent things falling behind it
sides and roof are tiled in hexagons spaces to save on material
4 columns topped in a circular arch to bear most of the weight.
'''
out_file = make_output()
bord = 2
side = hexfield(4, bord, 4, 40, 40)
side = solid.cube([35,30,2])-side
frame = solid.cube([35,30,2])-solid.translate([2,2,-1])(solid.cube([31,26,4]))
side = side + frame
object = [side]
print>>out_file, solid.scad_render(join_list(object))

