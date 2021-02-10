require 'pry'

class Triangle
  attr_reader :type

  @side_lengths = []

  def initialize(side_1, side_2, side_3)
    @side_lengths << side_1
    @side_lengths << side_2
    @side_lengths << side_3
  end

  def kind
    if side_1 == side_2 && side_2 ==side_3
      @type = "equilateral"
    elsif
      

  end
end
