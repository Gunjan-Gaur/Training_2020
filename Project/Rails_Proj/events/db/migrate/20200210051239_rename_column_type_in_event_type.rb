class RenameColumnTypeInEventType < ActiveRecord::Migration[6.0]
  def change
    rename_column :event_types, :type, :type_
  end
end
