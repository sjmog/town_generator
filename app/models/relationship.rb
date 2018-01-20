class Relationship < ApplicationRecord
  self.inheritance_column = nil
  belongs_to :person
  belongs_to :relation, class_name: 'Person', foreign_key: 'relation_id'

  def self.generate!(relation)
    create(relation: relation)
  end
end
