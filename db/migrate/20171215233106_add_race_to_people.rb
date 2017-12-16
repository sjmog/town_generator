class AddRaceToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :race, :string
  end
end
