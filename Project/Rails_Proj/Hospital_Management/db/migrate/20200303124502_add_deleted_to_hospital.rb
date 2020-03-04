class AddDeletedToHospital < ActiveRecord::Migration[6.0]
  def change
    add_column :hospitals, :deleted, :boolean
  end
end
