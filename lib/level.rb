require_relative 'age'

class Level
  LEVELS = {
    1..84 => 1,
    85..90 => 2,
    91..93 => 3,
    94..95 => 4,
    96..97 => 5,
    98..99 => 6,
    100 => Kernel.rand(7..20)
  }
  
  def self.generate(age, race)
    return 1 if Age.child?(age, race)
    return Kernel.rand(1..2) if Age.adolescent?(age, race)

    random_number = Kernel.rand(1..100)
    
    LEVELS.select { |level_index| level_index === random_number }.values.first
  end
end