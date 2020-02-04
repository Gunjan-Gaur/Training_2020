class RemoveHospIdFromHospitals < ActiveRecord::Migration[6.0]
  def change

    remove_column :hospitals, :hosp_id, :integer
  end
end
