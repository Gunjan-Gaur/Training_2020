class AddDocIdToAppointMent < ActiveRecord::Migration[6.0]
  def change
    add_reference :appoint_ments, :doc_tors, null: false, foreign_key: true
  end
end
