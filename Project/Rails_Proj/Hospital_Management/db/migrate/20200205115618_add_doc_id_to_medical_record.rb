class AddDocIdToMedicalRecord < ActiveRecord::Migration[6.0]
  def change
    add_reference :medical_records, :doc_tors, null: false, foreign_key: true
  end
end
