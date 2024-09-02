class User < ApplicationRecord
  has_many :user_conversations
  has_many :conversations, through: :user_conversations
  has_many :messages

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
