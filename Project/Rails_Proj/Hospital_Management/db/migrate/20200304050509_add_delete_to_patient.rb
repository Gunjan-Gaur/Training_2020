class AddDeleteToPatient < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :deleted, :boolean , default: false
  end
end
