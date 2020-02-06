class AddIndexToExtras < ActiveRecord::Migration[6.0]
  def change
    add_index :extras, :name
  end
end
