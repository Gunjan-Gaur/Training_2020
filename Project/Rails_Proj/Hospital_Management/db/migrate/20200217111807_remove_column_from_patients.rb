class RemoveColumnFromPatients < ActiveRecord::Migration[6.0]
  def change

    remove_column :patients, :Diagnosis, :string
  end
end
