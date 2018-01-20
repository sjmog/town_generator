class AddTypeToRelationships < ActiveRecord::Migration[5.1]
  def change
    add_column :relationships, :type, :string
  end
end
