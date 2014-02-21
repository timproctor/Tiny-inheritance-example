Tiny-inheritance-example
========================

Square inherits from Rectangle, so that we only need to pass Square class one, instead of two arguments.

class Rectangle
  def initialize(long_side, short_side)
    @base = long_side
    @length = short_side
  end

  def perimeter
    2 * (@base + @length)
  end
end

class Square < Rectangle
  def initialize(side)
    @base = @length = side
  end
end

p r = Rectangle.new(13,5) => #<Rectangle:0x007fc59c038108 @base=13, @length=5>
p r.perimeter => 36
p s = Square.new(7) => #<Square:0x007fc59c83ba08 @length=7, @base=7>
p s.perimeter => 28
