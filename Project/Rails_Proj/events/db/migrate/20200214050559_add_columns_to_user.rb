class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :combine_id, :bigint
    add_column :users, :combine_typ, :string
  end
end
