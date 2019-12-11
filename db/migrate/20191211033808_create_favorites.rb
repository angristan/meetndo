class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :lover_id
      t.integer :favorite_meeting_id

      t.timestamps
    end

    add_index :favorites, :lover_id
    add_index :favorites, :favorite_meeting_id
    add_index :favorites, [:lover_id, :favorite_meeting_id], unique: true
  end
end
