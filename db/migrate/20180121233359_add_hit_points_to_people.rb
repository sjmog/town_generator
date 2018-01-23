class AddHitPointsToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :hit_points, :integer
  end
end
