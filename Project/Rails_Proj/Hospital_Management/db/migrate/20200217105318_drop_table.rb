class DropTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :patient_diagnoses
  end
end
