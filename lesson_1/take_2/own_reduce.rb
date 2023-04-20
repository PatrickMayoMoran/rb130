# OPTION 1 - own solution that handles edge cases with long if statement
# def reduce(array, start=nil)
#   counter = 0
#   acc = nil
# 
#   if start
#     acc = start
#     while counter < array.size
#       acc = yield(acc, array[counter])
#       counter += 1
#     end
#   else
#     acc = array[counter]
#     counter += 1
#     loop do
#       break if counter >= array.size
#       acc = yield(acc, array[counter])
#       counter += 1
#     end
#   end
# 
#   acc
# end
#
# OPTION 2 - use of ternary and parameter flag
def reduce(collection, start = (not_given = true))
  return collection if collection.empty?
  acc = not_given ? collection[0] : start
  counter = not_given ? 1 : 0

  while counter < collection.size
    acc = yield(acc, collection[counter])
    counter += 1
  end

  acc
end

array = [1, 2, 3, 4, 5]

p reduce([])
p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
# p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass
p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
