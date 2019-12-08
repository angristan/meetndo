class AddCategoryReferenceToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_reference :meetings, :category, null: false, foreign_key: true
  end
end
