class AddCostToEventTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :event_types, :cost, :bigint
  end
end
