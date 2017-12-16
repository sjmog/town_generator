class AddLevelToPersons < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :level, :integer
  end
end
