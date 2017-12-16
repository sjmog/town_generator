class Occupation
  COMMON_OCCUPATIONS = {
    1..87 => "Commoner",
    88..92 => "Warrior",
    93..96 => "Expert",
    97..99 => "Adept",
    100 => "Aristocrat"
  }

  ELITE_OCCUPATIONS = [
    "Barbarian",
    "Bard",
    "Cleric",
    "Druid",
    "Fighter",
    "Monk",
    "Paladin",
    "Ranger",
    "Rogue",
    "Sorcerer",
    "Warlock",
    "Wizard"
  ]
  
  def self.generate
    Kernel.rand(1..100) >= 98 ? ELITE_OCCUPATIONS.sample : generate_common_occupation
  end

  def self.generate_common_occupation
    random_number = Kernel.rand(1..100)

    COMMON_OCCUPATIONS.select { |occupation_index| occupation_index === random_number }.values.first
  end
end