class CreateExtraTables < ActiveRecord::Migration[6.0]
  def change
    create_table :extra_tables do |t|
      t.text :name
      t.integer :age
      t.timestamps
    end
  end
end
