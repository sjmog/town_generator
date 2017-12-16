class CreateAbilityScores < ActiveRecord::Migration[5.1]
  def change
    create_table :ability_scores do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
