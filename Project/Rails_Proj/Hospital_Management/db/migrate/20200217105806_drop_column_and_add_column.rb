class DropColumnAndAddColumn < ActiveRecord::Migration[6.0]
  def change
    #remove_reference :patients ,:medical_records
    add_reference :medical_records ,:patients ,null:false ,foreign_key: true
  end
end
