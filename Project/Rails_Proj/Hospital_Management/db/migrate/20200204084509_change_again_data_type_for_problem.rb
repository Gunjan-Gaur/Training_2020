class ChangeAgainDataTypeForProblem < ActiveRecord::Migration[6.0]
  def change
    change_column :medical_records, :Problem, :string
  end
end
