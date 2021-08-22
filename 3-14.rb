#Project 3.14.
def my_swap(a,b)
  b,a = a,b
end

class Foo
	attr_accessor :a, :b
  def my_swap_2()
    @b,@a = @a,@b
  end
end

def my_string_replace_1(s)
  s.gsub( /Hi/, 'Hello') 
end

def my_string_replace_2(s)
  s.gsub!( /Hi/, 'Hello')
end

a,b = 5,1
puts "----"
puts "input before my_swap #{a},#{b}"
my_swap(a,b)
puts "input after my_swap #{a},#{b}"
puts "----"

f = Foo.new()
f.a = 2
f.b = 7
puts "----"
puts "input before my_swap_2 #{f.a},#{f.b}"
f.my_swap_2
puts "input after my_swap_2 #{f.a},#{f.b}"
puts "----"

puts "----"
a = "Hi"
puts "input before my_string_replace_1: #{a}"
my_string_replace_1(a)
puts "input after my_string_replace_1: #{a} "
puts "----"
puts "----"
a = "Hi"
puts "input before my_string_replace_2: #{a}"
my_string_replace_2(a)
puts "input after my_string_replace_2: #{a}"
puts "----"
