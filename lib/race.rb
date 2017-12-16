class Race
  RACES = {
    1..73  => "Human",
    74..83 => "Half-Elf",
    84..90 => "Halfling",
    91..94 => "Dwarf",
    95..96 => "Tiefling",
    97..98 => "Elf",
    99     => "Half-Orc",
    100    => "Dragonborn"
  }

  def self.generate
    random_number = Kernel.rand(1..100)

    RACES.select { |race_index| race_index === random_number }.values.first
  end
end