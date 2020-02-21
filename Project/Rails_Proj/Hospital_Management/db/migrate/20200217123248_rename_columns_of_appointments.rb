class RenameColumnsOfAppointments < ActiveRecord::Migration[6.0]
  def change
    rename_column :appointments ,:doctors_id ,:doctor_id
    rename_column :appointments ,:patients_id ,:patient_id
  end
end
