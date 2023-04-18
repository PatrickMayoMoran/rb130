def force_block_arg(&a)
  p a.call(3)
end

force_block_arg { puts "meow" }
# force_block_arg("meow") --> ArgumentError, given 1, expected 0!!!
force_block_arg(&:to_s) # This works!
