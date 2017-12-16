require './lib/race'
require './lib/name'
require './lib/level'
require './lib/occupation'

class Person < ApplicationRecord
  belongs_to :town
  has_one :ability_scores, foreign_key: 'person_id', class_name: 'AbilityScore'
  default_scope { order(level: :desc) }

  delegate :strength,
           :dexterity,
           :constitution,
           :intelligence,
           :wisdom,
           :charisma, to: :ability_scores

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

  def has_ability_scores?
    ability_scores && ability_scores.complete?
  end

  def generate_ability_scores!
    create_ability_scores!
    ability_scores.generate
    ability_scores.save
  end
end
