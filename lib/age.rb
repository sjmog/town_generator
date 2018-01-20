class Age
  HUMAN = {
    1..5 => 0..8,
    6..15 => 9..14,
    16..35 => 15..24,
    36..65 => 25..44,
    66..80 => 45..59,
    81..95 => 60..74,
    96..100 => 75..100
  }
  HUMAN_ADULTHOOD = 18

  HALF_ELF = {
    1..5 => 0..16,
    6..15 => 7..29,
    16..35 => 30..49,
    36..65 => 50..89,
    66..80 => 90..109,
    81..95 => 110..134,
    96..100 => 135..175
  }
  HALF_ELF_ADULTHOOD = 35

  HALFLING = {
    1..5 => 0..14,
    6..15 => 15..24,
    16..35 => 25..39,
    36..65 => 40..69,
    66..80 => 70..84,
    81..95 => 85..109,
    96..100 => 110..180
  }
  HALFLING_ADULTHOOD = 30

  DWARF = {
    1..5 => 0..34,
    6..15 => 35..69,
    16..35 => 70..119,
    36..65 => 120..169,
    66..80 => 170..210,
    81..95 => 211..260,
    96..100 => 261..400
  }
  DWARF_ADULTHOOD = 75

  TIEFLING = {
    1..5 => 0..8,
    6..15 => 9..14,
    16..35 => 15..24,
    36..65 => 25..44,
    66..80 => 45..59,
    81..95 => 60..74,
    96..100 => 75..100
  }
  TIEFLING_ADULTHOOD = 18

  ELF = {
    1..5 => 0..59,
    6..15 => 60..110,
    16..35 => 111..159,
    36..65 => 160..239,
    66..80 => 240..309,
    81..95 => 310..391,
    96..100 => 391..700
  }
  ELF_ADULTHOOD = 70

  HALF_ORC = {
    1..5 => 0..6,
    6..15 => 7..12,
    16..35 => 13..20,
    36..65 => 21..36,
    66..80 => 37..54,
    81..95 => 55..64,
    96..100 => 65..75
  }
  HALF_ORC_ADULTHOOD = 14

  DRAGONBORN = {
    1..5 => 0..4,
    6..15 => 5..14,
    16..35 => 15..24,
    36..65 => 25..42,
    66..80 => 43..55,
    81..95 => 56..70,
    96..100 => 71..90
  }
  DRAGONBORN_ADULTHOOD = 15

  def self.generate(race, level)
    random_number = Kernel.rand(1..100)

    age_range = const_get(race.underscore.upcase).select { |age_index| age_index === random_number }.values.first

    age = Kernel.rand(age_range)

    level > 5 && age < const_get("#{race.underscore.upcase}_ADULTHOOD") ? age + Kernel.rand(age_range) : age
  end
end