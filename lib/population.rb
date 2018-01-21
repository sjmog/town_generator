require_relative 'adult'
require_relative 'child'
require_relative 'adolescent'

class Population
  SIZES_TO_NUMBERS = {
    "Hamlet" => 0..49,
    "Village" => 50..99,
    "Small Town" => 100..499,
    "Large Town" => 500..1_499,
    "Small City" => 1_500..2_999,
    "Large City" => 3_000..5_999,
    "Metropolis" => 6_000...10_000
  }

  CHILDREN_FRACTION   = 0.07..0.12
  ADOLESCENT_FRACTION = 0.05..0.10
  EMPLOYMENT_FRACTION = 0.65..0.95

  attr_reader :people

  def initialize(population, establishments)
    @population = population
    @establishments = establishments

    @people = children + adolescents + employed + unemployed
  end

  def self.generate(town_size, establishments)
    population = Kernel.rand(SIZES_TO_NUMBERS[town_size])
    new(population, establishments).people
  end

  private

  def children
    @children ||= Array.new(children_population) { Child.generate }
  end

  def adolescents
    @adolescents ||= Array.new(adolescent_population) { Adolescent.generate(@establishments.sample) }
  end

  def employed
    @employed ||= Array.new(employed_population) { Adult.generate(@establishments.sample) }
  end

  def unemployed
    @unemployed ||= Array.new(unemployed_population) { Adult.generate }
  end

  def children_population
    @children_population ||= (@population * Kernel.rand(CHILDREN_FRACTION)).floor
  end

  def adolescent_population
    @adolescent_population ||= (@population * Kernel.rand(ADOLESCENT_FRACTION)).floor
  end

  def employed_population
    @employed_population ||= ((@population - children_population - adolescent_population) * Kernel.rand(EMPLOYMENT_FRACTION)).floor
  end

  def unemployed_population
    @unemployed_population ||= @population - children_population - adolescent_population - employed_population
  end
end