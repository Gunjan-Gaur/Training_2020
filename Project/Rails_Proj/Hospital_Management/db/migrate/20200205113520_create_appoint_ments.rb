class CreateAppointMents < ActiveRecord::Migration[6.0]
  def change
    create_table :appoint_ments do |t|
      t.date :Start_date
      t.date :End_date
      t.references :patients 
      t.timestamps
    end
  end
end
