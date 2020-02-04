class ChangeDataTypeForProblem < ActiveRecord::Migration[6.0]
  def change
    change_column :medical_records, :Problem, :text
  end
end
