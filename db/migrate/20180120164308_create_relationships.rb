class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.references :person, foreign_key: true
      t.column :relation_id, :integer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
