require 'spec_helper'

describe Book::NewsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'

      expect(response).to be_success
    end
  end

  describe "POST 'create'" do
    it "returns http success" do
      post 'create', book_news: { title: 'test', text: 'some random text' }

      expect(response).to be_redirect
    end

    it 'fails with validation errors' do
      post 'create', book_news: { title: '', text: 'some random text' }

      expect(response.body).to render_template :new
    end
  end

  describe "GET 'show'" do
    let(:news) { create(:news) }
    it "returns http success" do
      get 'show', id: news.id

      expect(response).to be_success
    end
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end
  end

end
