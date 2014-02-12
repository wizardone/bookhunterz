# encoding: utf-8
FactoryGirl.define do
  factory :user do
    email "test@test.com"
    nick "Bookhunter"
    before(:create) do |user|
      user.password = 'wizardone'
      user.password_confirmation = 'wizardone'
    end
  end
end


