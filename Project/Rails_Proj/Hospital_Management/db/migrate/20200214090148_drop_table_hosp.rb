class DropTableHosp < ActiveRecord::Migration[6.0]
  def change
    drop_table :hosps 
  end
end
