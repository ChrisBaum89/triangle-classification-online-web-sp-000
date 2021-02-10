require 'pry'

class Triangle
  attr_reader :type

  def initialize(side_1, side_2, side_3)
    @side_lengths = []
    @side_lengths << side_1
    @side_lengths << side_2
    @side_lengths << side_3
  end

  def kind
    if @side_lengths.any? {|x| x < 1} #takes care of 0 and negative sides
      raise TriangleError
    elsif (@side_lengths[1] + @side_lengths[2] > @side_lengths[3]) || (@side_lengths[1] + @side_lengths[3] > @side_lengths[2]) || (@side_lengths[2] + @side_lengths[3] > @side_lengths[1])

    elsif @side_lengths.uniq.count == 1
      @type = :equilateral
    elsif @side_lengths.uniq.count == 2
      @type = :isosceles
    else
      @type = :scalene
    end
  end

  class TriangleError < StandardError
  end
end
