class AddExtraToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :Extra, :string
  end
end
