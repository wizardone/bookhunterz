require 'spec_helper'

describe User do
  describe "#new" do
    it 'creates a new user' do
      user = User.new(email: 'test@test.com', nick: 'Bookhunter', password: 'test1234', password_confirmation: 'test1234')

      expect(user).to be_valid
    end

    it 'does not create new user because of wrong email format' do
      user = User.new(email: 'wrong_email', nick: 'Bookhunter', password: 'test1234', password_confirmation: 'test1234')

      expect(user).to have(1).error_on(:email)
    end

    it 'does not create new user because of mismatched password' do
      user = User.new(email: 'test@test.com', nick: 'Bookhunter', password: 'test1234', password_confirmation: 'test12')

      expect(user).to_not be_valid
    end
  end
end
