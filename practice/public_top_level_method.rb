def bark
  puts "bark!"
end

public

def meow
  puts "meow"
end

class Cat; end

p Cat.ancestors
Cat.new.meow

Cat.new.bark
