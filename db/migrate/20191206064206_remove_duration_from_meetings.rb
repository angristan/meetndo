class RemoveDurationFromMeetings < ActiveRecord::Migration[6.0]
  def change
    remove_column :meetings, :duration, :integer
  end
end
