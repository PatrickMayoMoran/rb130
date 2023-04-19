def ampersand_test(&prock)
  prock.call
end

p = proc { puts "meow" }

ampersand_test(p) # Doesn't work - ampersand means expecting explicit block
