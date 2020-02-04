class RenameColumnExtraFromPatient < ActiveRecord::Migration[6.0]
  def change
    rename_column :patients, :Extra, :New_Name
  end
end
