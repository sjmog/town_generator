class AddJobTitleToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :job_title, :string
  end
end
