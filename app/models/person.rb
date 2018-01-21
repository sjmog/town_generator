require './lib/race'
require './lib/age'
require './lib/name'
require './lib/level'
require './lib/occupation'
require './lib/job_title'

class Person < ApplicationRecord
  belongs_to :town
  belongs_to :establishment, required: false
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

  def colleagues
    town.people.where(establishment: establishment) - [self]
  end

  def child?
    self.child
  end
end
