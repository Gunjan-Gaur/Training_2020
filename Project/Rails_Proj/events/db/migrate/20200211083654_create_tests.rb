class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.text :name
      t.references :event_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
