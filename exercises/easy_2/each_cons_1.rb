# OPTION 1 - Explicit indices
# def each_cons(arr)
#   return nil if arr.size <= 1
#   i1 = 0
#   i2 = 1
#   while i2 < arr.size
#     yield(arr[i1], arr[i2])
#     i1 += 1
#     i2 += 1
#   end
#   nil
# end
#
# OPTION 2 - each_with_index, single check
def each_cons(arr)
  arr.each_with_index { |e, i| yield(e, arr[i+1]) if i < (arr.size - 1) }
  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil
