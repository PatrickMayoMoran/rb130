def my_method(&meow)
  p yield(2)
  p meow.call(2)
end

# turns the symbol into a Proc, then & turns the Proc into a block
s = proc { |t| t.to_s }
my_method(&s)               # => "2"
