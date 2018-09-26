class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 != 0 && @side2 != 0 && @side3 != 0 && @side1 + @side2 > @side3 && @side1 + @side3 > @side2 && @side2 + @side3 > @side1
      if @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        if @side2 == @side3 && @side1 = @side2 && @side1 == @side3
          return :equilateral
        else
          return :isosceles
        end
      end
      return :scalene
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
