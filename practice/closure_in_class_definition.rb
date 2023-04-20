class Cat
  def test
    a = Proc.new { puts meow }
    meow = "woof woof"
    a
  end

  def test2
    b = Proc.new { puts purr }
  end

  def purr
    "Purrrrrrrrr"
  end
end

# Cat.new.test.call -> NameError: undefined local variable or method 'meow'
Cat.new.test2.call # works! the calling object - self, object of the cat class
# is in scope when the b Proc is created inside of a method definition
# So calling that proc first looks for purr the local variable, and then
# tries calling purr on self - which is successful!
