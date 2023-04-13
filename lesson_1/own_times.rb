# Write own implementation of the times method
#
# INPUT: self and block
# OUTPUT: self
#
# Q's: 
#   How to implement 'self' with method defined outside of a class?
#   Mimic by passing integer as argument?
#
# Algorithm:
#   counter starts at 0
#   while counter is less than given number,
#     yield counter to the block
#     increment counter by 1
#
#   return given number

def times(n)
  counter = 0
  while counter < n
    yield(counter)
    counter += 1
  end

  n
end

# times(3) --> LocalJumpError
times(3) { puts "times test!" } # works!
p times(5) { |n| puts "Time now is #{n}" } # works!
