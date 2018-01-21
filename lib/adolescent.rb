require_relative 'race'
require_relative 'age'
require_relative 'name'
require_relative 'level'
require_relative 'occupation'
require_relative 'job_title'

class Adolescent
  ADOLESCENT_LEVEL_RANGE = 1..2
  
  def self.generate(establishment = nil)
    race       = Race.generate
    age        = Age.generate(race, 'ADOLESCENT')
    level      = Kernel.rand(ADOLESCENT_LEVEL_RANGE)
    descriptor = ["Feminine", "Masculine"].sample
    first_name = Name.first(race, descriptor)
    last_name  = Name.last(race)
    occupation = Occupation.generate

    person = Person.new(
      race:       race,
      level:      level,
      age:        age,
      descriptor: descriptor, 
      first_name: first_name, 
      last_name:  last_name,
      occupation: occupation,
      child:      false
    )

    if establishment
      person.establishment = establishment
      person.job_title = JobTitle.generate(establishment)
    end

    return person if person
    raise "Error creating person"
  end
end