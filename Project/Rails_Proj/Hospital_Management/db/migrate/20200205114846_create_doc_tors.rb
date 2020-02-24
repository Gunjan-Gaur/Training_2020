class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doc_tors do |t|
      t.string :First_name
      t.string :Last_name
      t.text :Qualifications
      t.string :Gender
      t.integer :salary
      t.string :email
      t.integer :mobile
      t.integer :age
      t.references :hospitals
      t.timestamps
    end
  end
end
