require 'rails_helper'

RSpec.describe Message, type: :model do
  it { should belong_to(:conversation) }
  it { should belong_to(:user) }
  it { should validate_presence_of(:content) }
end
