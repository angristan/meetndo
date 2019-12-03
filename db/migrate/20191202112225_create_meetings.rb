class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.text :description
      t.string :location
      t.datetime :event_date
      t.integer :duration
      t.decimal :price
      t.integer :max_attendees

      t.timestamps
    end
  end
end
