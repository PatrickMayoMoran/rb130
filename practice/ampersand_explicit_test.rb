def ampersand_test(&prock)
  p prock
  yield
  prock.call
  test_2(prock)
end

def test_2(prock)
  p "------"
  prock.call
  # yield - doesn't work here
  test_3(&prock)
end

def test_3(&prock)
  p "----"
  prock.call
  yield # both work again!
end

ampersand_test { puts "meow" }

p = proc { puts "meow" }

# ampersand_test(p) # Doesn't work - ampersand means expecting explicit block

