class DeleteColumnFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :combine_id ,:bigint
    remove_column :users, :combine_type ,:string
  end
end
