class CreateTowns < ActiveRecord::Migration[5.1]
  def change
    create_table :towns do |t|
      t.string :name
      t.string :size

      t.timestamps
    end
  end
end
