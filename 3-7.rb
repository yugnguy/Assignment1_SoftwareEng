module Enumerable
    def each_with_custom_index(start,step)
        index = start
        self.each do |x|
            yield(x,index)
            index += step
        end
    end
end

%w(alice bob carol).each_with_index do |person,index|
    puts ">> #{person} is number #{index}"
end
%w(alice bob carol).each_with_custom_index(3,2) do |person,index|
    puts ">> #{person} is number #{index}"
end
