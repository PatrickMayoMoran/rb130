def reduce(array, start=nil)
  counter = 0
  acc = nil

  if start
    acc = start
    while counter < array.size
      acc = yield(acc, array[counter])
      counter += 1
    end
  else
    acc = array[counter]
    counter += 1
    loop do
      break if counter >= array.size
      acc = yield(acc, array[counter])
      counter += 1
    end
  end

  acc
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
# p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass
p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
