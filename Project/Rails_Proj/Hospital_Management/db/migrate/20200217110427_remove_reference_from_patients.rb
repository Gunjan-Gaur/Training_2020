class RemoveReferenceFromPatients < ActiveRecord::Migration[6.0]
  def change
    remove_reference :patients ,:medical_records
  end
end
