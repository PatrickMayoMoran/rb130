def one_block
  yield
  yield
end

one_block { puts "meow" } # works, and prints meow twice
# one_block { puts "meow" }, { puts "bark" } --> SYNTAX ERROR

def two_procs(one, two)
  one.call
  two.call
end

a = proc { puts "meow" }
b = proc { puts "bark" }

two_procs(a, b)
