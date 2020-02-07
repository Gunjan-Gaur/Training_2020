class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :first_name, null:false
      t.text :last_name
      t.string :email
      t.integer :age
      t.string :gender
      t.decimal :salary
      t.references :roles
      t.timestamps
    end
  end
end
