class AddGenderToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :Gender, :string
  end
end
