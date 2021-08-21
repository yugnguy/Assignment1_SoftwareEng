def my_swap(a,b)
  puts "#{a} -> #{b}"
  b,a = a,b
  puts "#{a} -> #{b}"
end

class Foo
	attr_accessor :a, :b
  def my_swap_2()
    puts "----"
	puts "#{@a} -> #{@b}"
    @b,@a = @a,@b
	puts "#{@a} -> #{@b}"
	puts "----"
  end
end

def my_string_replace_1(s)
  puts s.gsub( /Hi/, 'Hello') 
end

def my_string_replace_2(s)
  puts s.gsub!( /Hi/, 'Hello')
end

my_swap(5,1)
f = Foo.new()
f.a = 2
f.b = 7
f.my_swap_2

a = "NotChange->Hi"
puts "input before method1:#{a}"
my_string_replace_1(a)
puts "input after method1: #{a} "
puts ""
a = "Change->Hi"
puts "input before method2:#{a}"
my_string_replace_2(a)
puts "input after method2: #{a}"