class AddDeleteToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :delete, :string
  end
end
