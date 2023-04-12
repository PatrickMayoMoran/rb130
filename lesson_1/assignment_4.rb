def echo_with_yield(str)
  yield
  str
end

# echo_with_yield { p "this!" } - ArgumentError; given 0, expected 1
echo_with_yield("meow") { p "this!" }
# echo_with_yield("meow", "cat") { p "this!" } - ArgumentError; 2 for 1

# echo_with_yield("meow") - LocalJumpError; no block given (yield)
