class RemoveColumnNewNameFromPatients < ActiveRecord::Migration[6.0]
  def change

    remove_column :patients, :New_Name, :string
  end
end
