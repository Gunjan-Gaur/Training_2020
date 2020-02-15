class RenameTypToTypeInUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :combine_typ ,:combine_type
  end
end
