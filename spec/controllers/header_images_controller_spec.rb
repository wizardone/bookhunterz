require 'spec_helper'

describe HeaderImagesController do

  describe "GET 'new'" do
    it 'displays the new template' do
      get :new

      expect(response).to render_template :new
    end
  end

  describe "GET 'new'" do
    it 'displays the index template' do
      get :index

      expect(response).to render_template :index
    end
  end

  describe "POST 'create'" do
    before do
      controller.stub(:clean_images).and_return(true)
    end

    it 'creates a new header image' do
      image = Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/files/header_logo.jpg')))
      post :create, header_image: {image: image}

      expect(response).to redirect_to(root_path)
    end
  end

end
