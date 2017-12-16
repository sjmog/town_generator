class AddOccupationToPersons < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :occupation, :string
  end
end
