class RenameColumnDateFromPractice < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :practices do |t|
        dir.up {t.change :date, :datetime}
        dir.down {t.change :date, :date}
      end
    end
        #rename_column :practices, :date, :datetime
  end
end
