class RemoveDivisionFromPatients < ActiveRecord::Migration[6.0]
  def change

    remove_column :patients, :delete, :string
  end
end
