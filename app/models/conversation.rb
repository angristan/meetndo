class Conversation < ApplicationRecord
  belongs_to :sender, foreign_key: :sender_id, class_name: 'User'
  belongs_to :recipient, foreign_key: :recipient_id, class_name: 'User'

  has_many :messages

  validates_uniqueness_of :sender_id, scope: :recipient_id

  existing_conversations_query = "(conversations.sender_id = ? AND conversations.recipient_id = ?)" \
    "OR (conversations.sender_id = ? AND conversations.recipient_id = ?)"

  scope :between, -> (sender_id, recipient_id) do
    where(existing_conversations_query, sender_id, recipient_id, recipient_id, sender_id)
  end
end
