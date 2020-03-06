class RenameColumnFirstNameFromDoctors < ActiveRecord::Migration[6.0]
  def change
    rename_column :doctors, :First_name, :first_name
    rename_column :doctors, :Last_name, :last_name
    rename_column :doctors, :Qualifications, :qualifications
    rename_column :doctors, :Gender, :gender
  end
end
