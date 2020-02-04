class CreateHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :hospitals do |t|
    	t.text :Name
    	t.string :Address
    	t.string :State
    	t.integer :Beds
      t.timestamps
    end
  end
end
