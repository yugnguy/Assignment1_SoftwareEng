def check (input)
	check = input.class
	
	if check == Class
		print "#{input} is #{check}"
		check = input 
	else 
		print "#{input} is #{check}"
	end
	until check == BasicObject
		check = check.superclass
		print "> #{check}"
	end
	puts ' '
end

check(5)
check(Fixnum)
check(Numeric)
check(Object)