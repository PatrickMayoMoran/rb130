def missing(arr)
  missing = []
  range = (arr.first..arr.last).to_a
  range.each { |n| missing << n if !arr.include?(n) }
  missing
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
