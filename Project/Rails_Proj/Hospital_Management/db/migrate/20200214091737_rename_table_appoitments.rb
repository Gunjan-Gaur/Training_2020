class RenameTableAppoitments < ActiveRecord::Migration[6.0]
  def change
    rename_table :appoint_ments ,:appointments
  end
end
