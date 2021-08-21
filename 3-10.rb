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