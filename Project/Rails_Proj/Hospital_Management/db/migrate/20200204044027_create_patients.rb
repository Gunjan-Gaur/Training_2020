class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.text :First_Name
      t.text :Last_Name
      t.string :Diagnosis
      t.integer :age
      t.string :Address
      t.integer :Mobile
      t.timestamps
    end
  end
end
