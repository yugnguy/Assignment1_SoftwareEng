#Project 3.7. The Enumerable module includes an iterator each_with_index that yields each enumerable element along
#with an index starting from zero (recall that Enumerable is mixed into Ruby’s built-in collection classes by default)
#&&
#Create an iterator each_with_custom_index in module Enumerable that lets you determine the starting value and step of the indices:

module Enumerable							#include Enumerable module which about loop
    def each_with_custom_index(start,step)	#add new method start is first number index "Default is 0 , 1 "
        index = start
        self.each do |x|					#do x round 
            yield(x,index)					#pass the parameter in yield to block 
            index += step					#increase index by step
        end
    end
end

%w(alice bob carol).each_with_index do |person,index|
    puts ">> #{person} is number #{index}"
end
%w(alice bob carol).each_with_custom_index(3,2) do |person,index|
    puts ">> #{person} is number #{index}"
end
