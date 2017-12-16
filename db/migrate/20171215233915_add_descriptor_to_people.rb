class AddDescriptorToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :descriptor, :string
  end
end
