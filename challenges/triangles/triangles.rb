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
    equal_sides = 1
    all_sides.each_with_index do |side, i|
      break if i > (all_sides.size - 2)
      equal_sides += 1 if side == all_sides[i+1]
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