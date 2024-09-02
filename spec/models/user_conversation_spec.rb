require 'rails_helper'

RSpec.describe UserConversation, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:conversation) }
  it { should validate_uniqueness_of(:user_id).scoped_to(:conversation_id) }
end
