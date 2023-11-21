require 'rails_helper'

RSpec.describe User, type: :model do
  it 'Should allow the user with full_name and user_name' do
    user = User.create(name: 'John', full_name: 'John Doe')
    expect(user).to be_valid
  end

  it 'Should not allow the user without full_name' do
    user = User.create(name: 'John')
    expect(user).not_to be_valid
  end

  it 'Should not allow the user without user_name' do
    user = User.create(full_name: 'John Doe')
    expect(user).not_to be_valid
  end
end
