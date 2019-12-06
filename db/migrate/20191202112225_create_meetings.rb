class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.text :description
      t.integer :location
      t.datetime :event_date
      t.decimal :price
      t.integer :max_attendees

      t.timestamps
    end
  end
end
