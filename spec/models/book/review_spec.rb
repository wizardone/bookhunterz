require 'spec_helper'

describe Book::Review do
  
  describe "#inialize" do
    it 'validates ok the new book review' do
      review = Book::Review.new(book_name: 'Test', review: 'Some long review here')

      expect(review).to be_valid
      expect(review.book_name).to eq 'Test'
      expect(review.review).to eq 'Some long review here'
    end

    it 'fails to validate the new book review' do
      review = Book::Review.new(book_name: 'Test')

      expect(review).to_not be_valid
      expect(review).to have(1).error_on(:review)
    end
  end

  describe ".search_for" do
    let!(:review) { FactoryGirl.create(:book_review) }
    it 'searches for a given book name' do
      expect(Book::Review.search_for('Test').first).to eq review
    end
  end
end
