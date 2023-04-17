def test(&block)
  block.call
end

test { puts "meow" }
