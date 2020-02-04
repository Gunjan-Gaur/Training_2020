class RemovePatientIdFromHospitals < ActiveRecord::Migration[6.0]
  def change

    remove_column :hospitals, :patients_id, :bigint
  end
end
