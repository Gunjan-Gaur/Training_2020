class RemoveForeignKeyFromPractices < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :practices, :patients
  end
end
