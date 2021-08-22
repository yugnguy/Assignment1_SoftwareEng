module Enumerable 

	def each_with_flattening 
		self.flatten.each do |item|
			if  item == self.flatten[(self.flatten.length)-1] 
				print "#{item}"
			else
				yield(item)
			end
		end
		
	end
end

[1, [2, 3], 4, [[5, 6], 7]].each_with_flattening { |s| print "#{s}," }