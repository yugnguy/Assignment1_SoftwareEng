class FibSequence
    include Enumerable
    def initialize(num)
      @num = num
    end

    def each      
      seq = []
      (0...@num-1).each do |number|
      seq << 1 if number <= 1
      seq << seq[-1] + seq[-2] if seq.length > 1
      end
      seq.each { |p| yield p }
    end

    def reject
      seq =[]
      seq1=[]
      (0...@num-1).each do |number|
      if number <= 1 
        seq << 1
        if yield(1) == false
          seq1 << 1 end 
      end
      if seq.length > 1
        total = seq[-1] + seq[-2] 
          seq << total 
        if yield(total) == false
          seq1 << total end 
        end
      end
        print seq1
    end
    
    def map
      seq =[]
      (0...@num-1).each do |number|
        seq << yield(1) if number <= 1
        seq << seq[-1] + seq[-2] if seq.length > 1 end
        print seq
    end
end
f = FibSequence.new(6)
f.each { |s| print(s,':') } 
f.reject { |s| s.odd? }
f.reject(&:odd?)
f.map { |x| 2*x }

