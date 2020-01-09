# The "key: value" syntax here is a short-cut for initializing hashes.
# The old syntax was ":key => value"
my_dog = {
       name: "Spot",
       age: 4,
       weight: 14
}

# Add a year to the age
# Notice the use of a symbol for the hash key.
my_dog[:age] += 1

puts "My dog, #{my_dog[:name]} is now #{my_dog[:age]} years old."

# Sometimes you will want an empty hash to fill later
empty_hash = {}

empty_hash[:january] = 31
empty_hash[:feb] = 28

# The syntax for initializing a hash from symbols to symbols looks a bit strange:

section = {
  piano: :percussion,
  clarinet: :woodwind,
  oboe: :woodwind,
  trumpet: :brass,
  frenchhorn: :brass,
  violin: :string,
  oboe: :woodwind,
  cello: :string,
  viola: :string,
  timpani: :percussion
}



