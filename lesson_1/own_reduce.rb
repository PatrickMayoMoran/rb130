array = [1, 2, 3, 4, 5]

def reduce(arr, acc=arr.first)
  counter = 1
  while counter < arr.size
    el = arr[counter]
    acc = yield(acc, el)
    counter += 1
  end

  acc
end

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
# p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass
p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
