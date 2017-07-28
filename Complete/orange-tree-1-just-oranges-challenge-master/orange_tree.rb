require_relative 'orange'

class OrangeTree
  attr_accessor :age, :fruits, :height

  GROWTH_RATE = 2.5
  HEIGHT_LIMIT = 25
  FRUIT_RANGE = (100..300)
  MATURE_AGE = 6
  AGE_LIMIT = 100

  class NoOrangesError < StandardError
  end

  def initialize
    @age = 0
    @height = 0
    @fruits = []
  end

  def pass_growing_season
    self.age += 1
    self.height += GROWTH_RATE if @height < HEIGHT_LIMIT
    produce_fruit if self.mature?
  end

  def produce_fruit
    rand(FRUIT_RANGE).times{ self.fruits << Orange.new }
  end

  def mature?
    self.age >= MATURE_AGE
  end

  def dead?
    self.age >= AGE_LIMIT
  end

  def has_oranges?
    self.fruits.count > 0
  end

  def pick_an_orange
    raise NoOrangesError, "This tree has no oranges" unless self.has_oranges?
    self.fruits.pop
  end

  def avg_diameter(fruits)
    diameters = fruits.map(&:diameter)
    diameter_sum = diameters.reduce { |sum, diameter| sum += diameter }
    diameter_sum / fruits.length
  end

end
