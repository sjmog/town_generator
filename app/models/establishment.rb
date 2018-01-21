class Establishment < ApplicationRecord
  self.inheritance_column = nil
  belongs_to :town
  has_many :people

  TYPES = ["Inn", "Smithy", "Keep"]

  INN_NAMES    = ["The Plume of Feathers", "Dergan's Sorrow", "The Chuckling Mermaid"]
  SMITHY_NAMES = ["Galbrear's Forge", "Ironfist", "Giant's Embers"]
  KEEP_NAMES   = ["Black Crag", "Sorrowfort", "Tyrion's Watch"]

  def self.generate
    type = TYPES.sample
    name = const_get("#{type.underscore.upcase}_NAMES").sample

    establishment = new(type: type, name: name)

    return establishment if establishment
    raise "Error creating establishment"
  end
end
