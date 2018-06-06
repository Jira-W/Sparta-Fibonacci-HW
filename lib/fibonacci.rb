class Fibonacci

  attr_accessor :sum_arr,:seq_arr ,:limit

  def initialize(limit)
    @limit = limit
    @sum_arr = []
    @seq_arr = []
  end

  def gen_seq
      a, b = 1, 2
     while b <= limit
       a, b = b, a + b
       @seq_arr << a
     end
     a
  end

  def even_arr
    @seq_arr.each do |i|
    if (i % 2).zero?
      @sum_arr << i
    end
    end
    @sum_arr
  end

  def sum
  sum = @sum_arr.reduce(:+)
  end

end
