class AbilityScore < ApplicationRecord
  belongs_to :person

  BASE_SCORE = 10
  DEFAULT_RANGE = -2..6

  PRIORITIES = {
    "Warrior"   => [:strength, :constitution, :dexterity],
    "Expert"    => [:dexterity, :intelligence],
    "Adept"     => [:intelligence, :wisdom],
    "Barbarian" => [:strength, :constitution, :dexterity],
    "Bard"      => [:charisma, :intelligence, :dexterity],
    "Cleric"    => [:wisdom, :charisma],
    "Druid"     => [:wisdom, :constitution],
    "Fighter"   => [:strength, :constitution],
    "Monk"      => [:wisdom, :dexterity],
    "Paladin"   => [:wisdom, :charisma, :constitution],
    "Ranger"    => [:dexterity, :wisdom],
    "Rogue"     => [:dexterity, :intelligence],
    "Sorcerer"  => [:charisma],
    "Warlock"   => [:wisdom, :intelligence],
    "Wizard"    => [:intelligence]
  }

  def complete?
    strength && dexterity && constitution && intelligence && wisdom && charisma
  end

  def generate
    unallocated_abilities = [:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma] - priorities

    base_scores.zip(priorities).each do |score, maybe_ability|
      if maybe_ability.nil?
        ability = unallocated_abilities.sample
        self[ability] = score
        unallocated_abilities.delete(ability)
      else
        self[maybe_ability] = score
      end
    end
  end

  private

  def base_scores
    root_scores = Array.new(6) { BASE_SCORE + Kernel.rand(DEFAULT_RANGE) }.sort.reverse
    
    root_scores[0] += 2 if person.level >= 4

    root_scores[0] += 1 if person.level >= 8
    root_scores[1] += 1 if person.level >= 8

    root_scores[0] += 1 if person.level >= 12
    root_scores[1] += 1 if person.level >= 12

    root_scores[0] += 2 if person.level >= 16

    root_scores[0] += 1 if person.level >= 20
    root_scores[1] += 1 if person.level >= 20

    root_scores
  end

  def priorities
    PRIORITIES[person.occupation] || []
  end
end
