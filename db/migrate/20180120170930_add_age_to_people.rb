class AddAgeToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :age, :integer
  end
end
