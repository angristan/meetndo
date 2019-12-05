class AddUserReferenceToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_reference :meetings, :user, null: false, foreign_key: true
  end
end
