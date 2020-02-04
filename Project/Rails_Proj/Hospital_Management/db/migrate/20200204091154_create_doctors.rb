class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :Name
      t.integer :salary
      t.integer :age
      t.timestamps
    end
  end
end
