import solid
import urllib, re, os, datetime, sys, lxml
import math

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



out_file = make_output()

rod = solid.translate([70,0,0])(solid.cylinder(r= 10, h = 181 ))
rod = solid.color([0,0,0])(rod)

trunk = strunk()
legs = slegs()
head = shead()
arms = sarms()
body = [trunk, head, legs, arms]
body = solid.color([.1,.9,.1])(join_list(body))

object = [rod, body]
print>>out_file, solid.scad_render(join_list(object))

# object=[]
# for i in range(100):
# 	x = int( math.cos(float(i)/5)*10+10)
# 	object+= [solid.translate([i,0,0])( solid.cylinder(r=1,h=x ) )]
# object = join_list(object)
