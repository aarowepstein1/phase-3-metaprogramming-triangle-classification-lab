class Triangle

  def initialize(a, b, c)
    @sides = [a, b, c]
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @sides.sum < 0 || @a + @b <= @c || @a + @c <= @b || @b + @c <= @a || @sides.any?{|i| i < 0}
      raise TriangleError
      elsif @a == @b && @a == @c && @b == @c
        return :equilateral
      elsif @a == @b || @a == @c || @b == @c
        return :isosceles
      else
        return :scalene
      end
  end

  class TriangleError < StandardError
    def message
      "Please enter a valid triangle"
    end
  end
end

