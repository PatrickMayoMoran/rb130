class Triangle
  def initialize(one, two, three)
    self.side1 = one if valid_side?(one)
    self.side2 = two if valid_side?(two)
    self.side3 = three if valid_side?(three)
    valid_triangle?(side1, side2, side3)
    self.all_sides = [side1, side2, side3]
  end

  def kind
    case equal_sides
    when 2            then 'isosceles'
    when 3            then 'equilateral'
    else                   'scalene'
    end
  end

  private

  attr_accessor :side1, :side2, :side3, :all_sides

  def equal_sides
    equal_sides = 0
    (0..1).each do |s1|
      ((s1+1)..2).each do |s2|
        equal_sides += 1 if all_sides[s1] == all_sides[s2]
        puts "#{all_sides[s1]} == #{all_sides[s2]}? #{all_sides[s1] == all_sides[s2]}"
      end
    end
    equal_sides
  end

  def valid_side?(side)
    if side > 0
      true
    else
      raise ArgumentError
    end
  end

  def valid_triangle?(side1, side2, side3)
    raise ArgumentError unless (side1 + side2 > side3) &&
    (side2 + side3 > side1) &&
    (side1 + side3 > side2)
  end
end
