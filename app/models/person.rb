require './lib/race'
require './lib/name'
require './lib/level'
require './lib/occupation'

class Person < ApplicationRecord
  belongs_to :town

  def self.generate
    race       = Race.generate
    descriptor = ["Feminine", "Masculine"].sample
    name       = Name.generate(race, descriptor)
    occupation = Occupation.generate
    level      = Level.generate

    person = new(race: race, descriptor: descriptor, name: name, occupation: occupation, level: level)

    return person if person
    raise "Error creating person"
  end
end
