class AddForeignKeyInPractice < ActiveRecord::Migration[6.0]
  def change
    add_reference :practices, :doc_tors , null:false ,foreign_key: true 
  end
end
