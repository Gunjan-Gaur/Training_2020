class ChangeDataType < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :hosps do |t|
        dir.up {t.change :name,:string}
        dir.down {t.change :name,:text}
      end
    end
  end
end
