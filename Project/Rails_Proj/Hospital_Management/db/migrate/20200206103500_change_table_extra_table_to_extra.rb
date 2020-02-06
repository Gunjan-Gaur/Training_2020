class ChangeTableExtraTableToExtra < ActiveRecord::Migration[6.0]
  def change
    rename_table:extra_tables, :extras
  end
end
