class AddForeignKeyToPractice < ActiveRecord::Migration[6.0]
  def change
    add_reference :practices, :patients, null: false, foreign_key: true
  end
end
