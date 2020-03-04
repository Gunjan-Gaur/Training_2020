class RemoveDeleteFromHospitals < ActiveRecord::Migration[6.0]
  def change

    remove_column :hospitals, :deleted, :boolean
  end
end
