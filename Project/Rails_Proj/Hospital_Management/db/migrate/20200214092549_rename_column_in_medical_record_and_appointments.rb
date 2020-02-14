class RenameColumnInMedicalRecordAndAppointments < ActiveRecord::Migration[6.0]
  def change
    rename_column :appointments, :doc_tors_id ,:doctors_id
    rename_column :medical_records, :doc_tors_id ,:doctors_id
  end
end
