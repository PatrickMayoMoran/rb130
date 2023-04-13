def each(enum)
  counter = 0
  while counter < enum.size
    yield enum[counter]
    counter += 1
  end

  enum
end

p each([1,2,3]) { |n| puts n }
