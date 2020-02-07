class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :name
      t.date :date
      t.references :users
      t.references :event_types
      t.timestamps
    end
  end
end
