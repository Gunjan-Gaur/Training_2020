class RenameTableDoctors < ActiveRecord::Migration[6.0]
  def change
    rename_table :doc_tors , :doctors
  end
end
