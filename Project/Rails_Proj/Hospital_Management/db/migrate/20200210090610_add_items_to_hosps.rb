class AddItemsToHosps < ActiveRecord::Migration[6.0]
  def change
    add_column :hosps, :gender, :string
    add_reference :hosps, :hospital, null: false, foreign_key: true
  end
end
