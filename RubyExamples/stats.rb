class Stats

  # constructor is named "initialize"
  def initialize

    # instance variables begin with "@"
    @values = [] # create an empty array
    @sum = 0
    @sum_sq = 0
  end

  # Notice that parameters don't need a type
  def add(value)
    @values << value
    @sum += value
    @sum_sq += value * value
  end

  def mean
    # value of last expression becomes return value for the method
    @sum.to_f / @values.count # to_f is "to float"
  end

  def median
    sorted_values = @values.sort
    mid = @values.count / 2

    # notice that the if statement takes the value of the
    # last line of the block that is run
    if (@values.count % 2 == 0)
      (@values[mid] + @values[mid - 1]) / 2.0
    else
      @values[mid]
    end
  end # method median
end # class Stats

s1 = Stats.new
s1.add(8)
s1.add(6)
s1.add(7)

puts "Mean is #{s1.mean}.  Median: #{s1.median}"

s1.add(5)
puts "Mean is #{s1.mean}.  Median: #{s1.median}"
