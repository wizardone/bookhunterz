require 'spec_helper'

describe Book::ReviewsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'

      expect(response).to be_success
    end
  end

  describe "GET 'show'" do
    let(:review) { create(:book_review) }
    it "returns http success" do
      get 'show', id: review.id

      expect(response).to be_success
    end
  end

  describe "POST 'create'" do
    before do
      controller.stub(:current_user).and_return( create(:user) )
    end
    it "returns http success" do
      post 'create', book_review: { book_name: 'Test book', review: 'aaaa', score: '8' }

      expect(response).to be_redirect
    end

    it 'fails with validation error' do
      post 'create', book_review: { book_name: '', review: '', score: '8' }

      expect(response).to render_template :new
    end
  end

  describe "PUT 'update'" do
    let!(:review) { create(:book_review) }
    it "returns http success" do
      put 'update', id: review.book_name, book_review: { score: '5' }

      expect(response).to be_redirect
    end
  end

end
