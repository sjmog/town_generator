class Population
  SIZES_TO_NUMBERS = {
    "Hamlet" => 0..49,
    "Village" => 50..99,
    "Small Town" => 100..4_99,
    "Large Town" => 500..1_499,
    "Small City" => 1_500..2_999,
    "Large City" => 3_000..5_999,
    "Metropolis" => 6_000...10_000
  }

  attr_reader :people

  def initialize(town_size)
    @people = Array.new(population_size(town_size)) { Person.generate }
  end

  def self.generate(town_size)
    new(town_size).people
  end

  private

  def population_size(town_size)
    Kernel.rand(SIZES_TO_NUMBERS[town_size])
  end
end