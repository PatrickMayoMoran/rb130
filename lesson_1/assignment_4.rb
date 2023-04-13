def echo_with_yield(str)
  yield if block_given?
  str
end

# echo_with_yield { p "this!" } - ArgumentError; given 0, expected 1
p echo_with_yield("meow") { p "this!" }
# echo_with_yield("meow", "cat") { p "this!" } - ArgumentError; 2 for 1

p echo_with_yield("meow") # - LocalJumpError; no block given (yield)
# Adding block_given? means we can add in functionality of still running
# the method when a block has not been given
