def two_blocks_test(&a, &b)
  a.call
  b.call
end

two_blocks_test({ puts "meow" }, { puts "bark" })
# Doesn't work, not sure why...
