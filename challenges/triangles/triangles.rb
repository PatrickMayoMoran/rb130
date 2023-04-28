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
    return 3 if (side1 == side2) && (side1 == side3)
    return 0 if (side1 != side2) && (side2 != side3) && (side1 != side3)
    2
  end

  def valid_side?(side)
    raise ArgumentError unless side > 0
    true
  end

  def valid_triangle?(side1, side2, side3)
    raise ArgumentError unless (side1 + side2 > side3) &&
    (side2 + side3 > side1) &&
    (side1 + side3 > side2)
  end
end
