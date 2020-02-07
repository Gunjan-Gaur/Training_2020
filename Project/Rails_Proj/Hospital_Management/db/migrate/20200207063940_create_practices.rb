class CreatePractices < ActiveRecord::Migration[6.0]
  def change
    create_table :practices do |t|
      t.text :name
      t.integer :age
      t.references :hospitals
      t.timestamps
    end
  end
end
