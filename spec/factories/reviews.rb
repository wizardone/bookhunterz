# encoding: utf-8
FactoryGirl.define do
  factory :book_review, class: 'Book::Review' do
    book_name "Test"
    review "Test text some long review"
    score 8
  end
end

