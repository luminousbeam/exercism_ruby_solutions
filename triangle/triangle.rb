require 'minitest/pride'

class Triangle
  attr_reader :side_lengths

  def initialize(side_lengths)
    @side_lengths = side_lengths
  end

  def illegal?
    side_lengths.any? { |side| side <= 0 }
  end

  def equilateral?
    if illegal?
      false
    else
      side_lengths.uniq.size == 1
    end
  end

  def isosceles
  end

  def scalene
  end
end
