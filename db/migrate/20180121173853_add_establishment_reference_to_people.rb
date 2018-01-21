class AddEstablishmentReferenceToPeople < ActiveRecord::Migration[5.1]
  def change
    add_reference :people, :establishment, foreign_key: true
  end
end
