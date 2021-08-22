#Project 3.10  Augment the Enumerable module with a new iterator, each_permuted, which returns the elements of a collection in a random order.
#The iterator may assume that the collection responds to each but shouldn’t make any other assumptions about the elements. Hint: you may want to use the
#rand method in the Ruby standard library.

module Enumerable
  def each_permuted
    generator = Random.new
    tmp = []
    self.each do |w|
      r = generator.rand(tmp.length + 1)
      if r == tmp.length
        tmp << w
      else
        tmp << tmp[r]
        tmp[r] = w
      end
    end
  
    tmp.each do |w|
      yield w
    end
  end
end
[1,2,3,4,5,6].each_permuted { |x| p x }