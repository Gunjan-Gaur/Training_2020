class CreateMedicalRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_records do |t|
      t.string :Problem
      t.date :Date_of_examination
      t.timestamps
    end
  end
end
