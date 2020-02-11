class RenameColumnEventTypesToEventType < ActiveRecord::Migration[6.0]
  def change
    rename_column :events ,:event_types_id ,:event_type_id
  end
end
