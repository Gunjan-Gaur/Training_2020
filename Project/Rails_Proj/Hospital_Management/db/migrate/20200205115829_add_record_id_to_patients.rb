class AddRecordIdToPatients < ActiveRecord::Migration[6.0]
  def change
    add_reference :patients, :medical_records, null: false, foreign_key: true
  end
end
