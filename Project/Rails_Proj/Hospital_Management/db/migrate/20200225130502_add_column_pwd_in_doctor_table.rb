class AddColumnPwdInDoctorTable < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :password, :string
    add_column :doctors, :confirm_password, :string
    add_column :doctors, :comments, :string
  end
end
