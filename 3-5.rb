#Project 3.5. Building on the example in Section 3.5, take advantage of Time’s duck typing to
#define a method at_beginning_of_year that lets you write

class Fixnum
  def seconds  ; self ; end
  def minutes  ; self * 60 ; end
  def hours    ; self * 60 * 60 ; end
  def ago      ; Time.now - self ; end
  def from_now ; Time.now + self ; end
  def day ; self*60*60*24 ;end			
end

class Time 								 
	def at_beginning_of_year  				#method that find first day of year
		Time.local(self.year,1,1)			
	end
end

puts Time.now.at_beginning_of_year + 1.day