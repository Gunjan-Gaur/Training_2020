class AddDeleteAtToHospital < ActiveRecord::Migration[6.0]
  def change
    add_column :hospitals, :deleted_at, :datetime
    add_index :hospitals, :deleted_at
  end
end
