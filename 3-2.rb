#Project 3.2. Given that superclass returns nil when called on BasicObject but a non-nil value
#otherwise, write a Ruby method that, if passed any object, will print the object’s class and
#its ancestor classes all the way up to BasicObject. 

def check (input)

	type = input.class 					#check input type
	
	if type == Class  					#if it's type is "Class"
		print "#{input} is #{type}"
		type = input 					#assign type = input for stop looping of superclass
	else 								#if it's not "Class" can be lower obj. level or higher  obj. level
		print "#{input} is #{type}"
	end
	
	until type == BasicObject			#find an ancestor untill it be BasicObject 
		type = type.superclass
		print " -> #{type}"
	end
	puts ' '
	
end

check(5)
check(Fixnum)
check(Numeric)
check(Object)