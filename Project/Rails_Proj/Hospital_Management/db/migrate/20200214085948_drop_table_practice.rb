class DropTablePractice < ActiveRecord::Migration[6.0]
  def change
    drop_table :practices
  end
end
