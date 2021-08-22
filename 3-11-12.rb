class BinaryTree
	include Enumerable
	attr_accessor :value, :left, :right
		
	def initialize(value = nil)
		@value = value
		@left = nil
		@right = nil
	end

	def <<(value)
		if @value.nil?
			@value = value
		elsif value < @value 
			if @left.nil?
				@left = BinaryTree.new()
				@left.value = value
			else
				@left << value
			end
		elsif value > @value
			if @right.nil?
				@right = BinaryTree.new()
				@right.value = value
			else 
				@right << value
			end
		end
	end

	def empty?
		@value.nil?
	end

	def inorderTraversal(node)
		result = []
		return result if node.nil?

		result += self.inorderTraversal(node.left)
		result << node.value
		result += self.inorderTraversal(node.right)
		return result

	end

	def each
		self.inorderTraversal(self).each { |val|
			yield val
		}
	end 
end

tree = BinaryTree.new

puts "Before insertion #{tree.empty?}"
tree_value = [100,5,0,1,3,-2,7,200]
tree_value.each{|val| tree << val}
puts "After insertion #{tree.empty?}"

tree.each{ |x| print "#{x} " }
puts ""

puts tree.include?(100) 
puts tree.include?(69)

puts tree.all?{|val| val.class == Integer}
puts tree.all?{|val| val % 2 == 0} 
puts tree.any?{|val| val % 2 == 0}

new_sort = tree.sort{|a,b| b <=>a}
new_sort.each{|x| print "#{x} " }
puts ""

