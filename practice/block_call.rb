def test(&block)
  p block.class
  block.call
end

test { puts "meow" }
