class ReversibleInPatients < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :patients do |t|
        dir.up {t.change :New_Name,:string }
        dir.down {t.change :New_Name,:integer }
      end
    end
  end
end
