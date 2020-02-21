class RenameColumnComineToCombine < ActiveRecord::Migration[6.0]
  def change
    rename_column :pictures ,:comine_type, :combine_type
  end
end
