def return_block
  yield
  return "returned from method"
end

# puts return_block { return "returned from block!" }


def return_proc(a)
  
  a.call
  "returned from method!"
end
a = Proc.new { return "returned from Proc!" }
p return_proc(a)

