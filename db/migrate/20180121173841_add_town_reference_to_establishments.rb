class AddTownReferenceToEstablishments < ActiveRecord::Migration[5.1]
  def change
    add_reference :establishments, :town, foreign_key: true
  end
end
