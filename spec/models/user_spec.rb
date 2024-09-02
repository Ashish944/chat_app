require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:user_conversations) }
  it { should have_many(:conversations).through(:user_conversations) }
  it { should have_many(:messages) }

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
end
