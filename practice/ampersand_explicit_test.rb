def ampersand_test(&prock)
  yield
  prock.call
end

p = proc { puts "meow" }

# ampersand_test(p) # Doesn't work - ampersand means expecting explicit block
ampersand_test { puts "meow" }
