def traditional_selection_sort(values)

  # Don't write for loops this way! Use the idiomatic values.each I'll show you in a minute.
  for i in 0..(values.count - 1)
    min_loc = i
    for j in (i + 1)..(values.count - 1)
      # It would be nice to make the "<" a parameter so you can
      # compare objects using any algorithm.
      min_loc = j if values[j] < values[min_loc]
    end
    temp = values[i]
    values[i] = values[min_loc]
    values[min_loc] = temp
  end
  values
end

p traditional_selection_sort([8, 6, 7, 5, 3, 0, 9])

# The "traditional" method only works if we are using the standard < comparison.
# To generalize this algorithm, we want to pass a "compare" method as a parameter.
# The standard ruby mechanism for doing this is a code block with a "yield"

def selection_sort(values)

  # Don't write for loops this way! Use the idiomatic values.each I'll show you in a minute.
  for i in 0..(values.count - 1)
    min_loc = i
    for j in (i + 1)..(values.count - 1)
      min_loc = j if yield(values[j], values[min_loc])
    end
    temp = values[i]
    values[i] = values[min_loc]
    values[min_loc] = temp
  end
  values
end

# Sorted low to high
p selection_sort([8, 6, 7, 5, 3, 0, 9]) { |a, b| a < b }

# Sorted high to low
p selection_sort([8, 6, 7, 5, 3, 0, 9]) { |a, b| a > b }

# Sort dogs by age

dog1 = { name: 'Fido', age: 14, weight: 6 }
dog2 = { name: 'Spot', age: 4, weight: 12 }
dog3 = { name: 'Rover', age: 12, weight: 22 }

p selection_sort([dog1, dog2, dog3]) { |a, b| a[:age] < b[:age] }

#
# Conventional way of looping over array in Ruby:
#

array = [8, 6, 7, 5, 3, 0, 9]
sum = 0
array.each { |i| sum += 1 }

array.each_with_index { |item, index| puts "Item number #{index} is #{item}" }

# Use {} syntax for one line.  do-end syntax for multiple line blocks:

array.each_with_index do |item, index|
  puts "Item number #{index} is #{item}"
end

#
# Examples of using map
#

array = [1, 2, 3, 4, 5, 6, 7]
squared = array.map { |i| i * i }
p squared

names = [
  { first: 'George', last: 'Washington' },
  { first: 'John', last: 'Adams' },
  { first: 'Thomas', last: 'Jefferson' },
  { first: 'James', last: 'Madison' },
  { first: 'James', last: 'Monroe' }
]

full_names = names.map { |i| "#{i[:last]}, #{i[:first]}"}
p full_names