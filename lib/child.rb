class Child
  CHILD_LEVEL = 1
  CHILD_OCCUPATION = "Commoner"

  def self.generate
    race       = Race.generate
    age        = Age.generate(race, 'CHILD')
    level      = CHILD_LEVEL
    descriptor = ["Feminine", "Masculine"].sample
    first_name = Name.first(race, descriptor)
    last_name  = Name.last(race)
    occupation = "Commoner"

    person = Person.new(
      race:       race,
      level:      level,
      age:        age,
      descriptor: descriptor, 
      first_name: first_name, 
      last_name:  last_name,
      occupation: occupation,
      child:      true
    )

    return person if person
    raise "Error creating person"
  end
end