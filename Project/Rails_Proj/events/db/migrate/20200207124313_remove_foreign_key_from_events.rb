class RemoveForeignKeyFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_reference :events, :users
  end
end
