# OPTION 1 - with each
# def count(array)
#   count = 0
# 
#   array.each do |el|
#     count += 1 if yield(el)
#   end
# 
#   count
# end
#
# OPTION 2 - no each
def count(array)
  iterator = 0
  count = 0

  while iterator < array.size
    count += 1 if yield(array[iterator])
    iterator += 1
  end

  count
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2
