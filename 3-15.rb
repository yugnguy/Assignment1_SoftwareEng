#Project 3.15.
#Extend the Time class with a humanize method that prints out an informative phrase describing the time of day to the nearest fifteen-minute division, in
#twelve-hour mode, and making a special case for midnight:


require 'time'
class Time 
	attr_accessor :string  
	attr_accessor :indicator_check
	
  def numtostr(input)
	if indicator_check != "am"
	  number = input%12
	  time_list = {1 => "one",2 => "two",3=> "three", 4=> "four",5=> "five",6=> "six",7=> "seven", 8=> "eight" , 9=>"nine" ,10=>"ten", 11=>"eleven", 0=>"midnight"}
	  time_list.keys.each do |item|
		if number == item
			@string += "#{time_list[item]}"
		end
	  end
	else 
		if input == 0 
		  @string += "12"
		else 
		  @string += "#{input}"
		end 
	end
   end  

	
  def  humanize
	@string =""
	@indicator_check = self.strftime("%P" )
	t_hour = Integer( self.strftime("%H") ) 
	t_min = Integer ( self.strftime("%M") )	 
	
	if indicator_check != "am" 
		if t_min >= 45 
			t_hour +=1
			if t_hour == 24
			else
				@string +="a quarter til " 
			end
		elsif t_min < 45 && t_min >=30 
			@string +="half past "
		elsif t_min >=15 && t_min <30
			@string +="half past "
		else 
		end	
		numtostr(t_hour)
	else 
		if t_min >= 45 
			t_hour +=1
			t_min = "00"
		elsif t_min < 45 && t_min >=30 
			t_min = 30
		elsif t_min >=15 && t_min <30
			t_min = 30 
		else 
			t_min = "00"
		end	
		numtostr(t_hour)
		@string += ":#{t_min}"
	end
	puts "About #{string}"
  end
end



puts Time.parse("10:47 pm").humanize
puts Time.parse("10:31 pm").humanize
puts Time.parse("10:07 pm").humanize
puts Time.parse("23:58").humanize

puts Time.parse("00:26").humanize
puts Time.parse("01:15").humanize
puts Time.parse("05:46").humanize
