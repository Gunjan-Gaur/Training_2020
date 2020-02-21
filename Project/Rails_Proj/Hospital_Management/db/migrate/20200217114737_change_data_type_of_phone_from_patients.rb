class ChangeDataTypeOfPhoneFromPatients < ActiveRecord::Migration[6.0]
  def change
    change_column :patients ,:Mobile ,:bigint
  end
end
