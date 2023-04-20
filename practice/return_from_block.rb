def return_block
  yield
  return "returned from method"
end

puts return_block { return "returned from block!" }

=begin
def return_proc
  a = Proc.new { return "returned from Proc!" }
  a.call
  "returned from method!"
end

p return_proc
=end
