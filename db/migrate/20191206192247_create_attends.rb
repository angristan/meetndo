class CreateAttends < ActiveRecord::Migration[6.0]
  def change
    create_table :attends do |t|
      t.integer :attendee_id
      t.integer :attended_meeting_id

      t.timestamps null: false
    end

    add_index :attends, :attendee_id
    add_index :attends, :attended_meeting_id
    add_index :attends, [:attendee_id, :attended_meeting_id], unique: true
  end
end
