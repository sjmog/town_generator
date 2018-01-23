require_relative 'dice'

class Occupation
  CHANCE_OF_ELITE = 2

  COMMON = {
    1..85 =>  { occupation: "Commoner",   die: D6 },
    86..92 => { occupation: "Warrior",    die: D10 },
    93..96 => { occupation: "Expert",     die: D6 },
    97..99 => { occupation: "Adept",      die: D6 },
    100 =>    { occupation: "Aristocrat", die: D6 }
  }

  ELITE = [
    { occupation: "Barbarian", die: D12 },
    { occupation: "Bard",      die: D8 },
    { occupation: "Cleric",    die: D10 },
    { occupation: "Druid",     die: D8 },
    { occupation: "Fighter",   die: D10 },
    { occupation: "Monk",      die: D10 },
    { occupation: "Paladin",   die: D10 },
    { occupation: "Ranger",    die: D10 },
    { occupation: "Rogue",     die: D8 },
    { occupation: "Sorcerer",  die: D6 },
    { occupation: "Warlock",   die: D6 },
    { occupation: "Wizard",    die: D6 }
  ]

  ALL_OCCUPATIONS = COMMON.values + ELITE
  
  def self.generate
    Kernel.rand(1..100) <= CHANCE_OF_ELITE ? ELITE.sample[:occupation] : common_occupation[:occupation]
  end

  def self.common_occupation
    random_number = Kernel.rand(1..100)

    COMMON.select { |occupation_index| occupation_index === random_number }.values.first
  end

  def self.hit_die_for(occupation)
    ALL_OCCUPATIONS
      .select { |occupation_with_die| occupation_with_die[:occupation] == occupation }
      .first
      .fetch(:die, D6)
  end
end