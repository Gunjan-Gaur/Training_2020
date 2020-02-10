class CreateHosps < ActiveRecord::Migration[6.0]
  def change
    create_table :hosps do |t|
        t.text :name
        t.decimal :salary
      t.timestamps
    end
  end
end
