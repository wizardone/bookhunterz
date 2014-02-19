# encoding: utf-8
FactoryGirl.define do
  factory :news, class: 'Book::News' do
    title "Test news"
    text "Test text news"
  end
end
