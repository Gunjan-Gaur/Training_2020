class ChangeColumnsOfDoctors < ActiveRecord::Migration[6.0]
  def change
    change_column :doctors ,:mobile ,:bigint
    rename_column :doctors ,:hospitals_id ,:hospital_id
  end
end
