# each robot must have a different name
# when a robot changes its name, it must not match old name AND 
# can't be same as another robot_name
class Robot
  @@all_names = []

  attr_reader :name

  def initialize
    @name = generate_name
  end

  def generate_name
    name = generate_letters + generate_numbers
  end

  def reset
    old_name = name
    new_name = generate_name
    while new_name == old_name
      new_name = generate_name
    end

    self.name = new_name
  end

  private

  attr_writer :name

  def generate_letters
    letters = ''
    2.times do
      letter = ('A'..'Z').to_a.shuffle.sample
      letters << letter
    end

    letters
  end

  def generate_numbers
    numbers = ''
    3.times do
      number = (0..9).to_a.shuffle.sample
      numbers << number.to_s
    end

    numbers
  end
end
