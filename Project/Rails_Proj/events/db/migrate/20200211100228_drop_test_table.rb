class DropTestTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :tests
  end
end
