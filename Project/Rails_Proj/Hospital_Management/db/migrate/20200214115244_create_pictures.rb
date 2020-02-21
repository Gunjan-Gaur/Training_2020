class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :name
      t.bigint :combine_id
      t.string :comine_type
      t.timestamps
    end
  end
end
