class Conversation < ApplicationRecord
  has_many :user_conversations
  has_many :users, through: :user_conversations
  has_many :messages

  validates :name, presence: true, if: :is_group?
end
