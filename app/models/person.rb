require './lib/race'
require './lib/age'
require './lib/name'
require './lib/level'
require './lib/occupation'

class Person < ApplicationRecord
  belongs_to :town
  has_one :ability_scores, foreign_key: 'person_id', class_name: 'AbilityScore'
  has_many :relationships
  has_many :relations, through: :relationships
  default_scope { order(level: :desc) }

  delegate :strength,
           :dexterity,
           :constitution,
           :intelligence,
           :wisdom,
           :charisma, to: :ability_scores

  def self.generate
    race       = Race.generate
    age        = Age.generate(race)
    level      = Level.generate(age, race)
    descriptor = ["Feminine", "Masculine"].sample
    first_name = Name.first(race, descriptor)
    last_name  = Name.last(race)
    occupation = Occupation.generate

    person = new(
      race:       race,
      level:      level,
      age:        age,
      descriptor: descriptor, 
      first_name: first_name, 
      last_name:  last_name,
      occupation: occupation
    )

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

  def has_relationships?
    relationships.any?
  end

  def generate_relationships!
    (town.people.where(last_name: last_name) - [self]).each do |relation|
      relationships.generate!(relation)
    end
  end

  def name
    "#{first_name} #{last_name}"
  end
end
