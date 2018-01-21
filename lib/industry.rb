class Industry
  SIZES_TO_NUMBERS = {
    "Hamlet" => 0..3,
    "Village" => 4..10,
    "Small Town" => 11..49,
    "Large Town" => 50..149,
    "Small City" => 150..299,
    "Large City" => 300..599,
    "Metropolis" => 600...1_000
  }

  attr_reader :establishments

  def initialize(town_size)
    @establishments = Array.new(industry_size(town_size)) { Establishment.generate }
  end

  def self.generate(town_size)
    new(town_size).establishments
  end

  private

  def industry_size(town_size)
    Kernel.rand(SIZES_TO_NUMBERS[town_size])
  end
end