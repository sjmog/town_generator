require './lib/population'

class Town < ApplicationRecord
  has_many :people, foreign_key: "town_id", class_name: "Person", validate: false

  def guard
    people.where(occupation: ["Warrior", "Fighter"])
  end

  def has_guard?
    guard.any?
  end

  def self.generate(params)
    name = params[:name]
    size = params[:size]
    people = Population.generate(size)

    new(name: name, size: size, people: people)
  end
end
