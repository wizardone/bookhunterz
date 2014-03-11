require 'spec_helper'

describe HeaderImage do

  describe "#new" do
    it 'creates a new header image' do
      header_image = HeaderImage.new(image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/files/header_logo.jpg'))), active: true)

      expect(header_image).to be_new_record
      expect(header_image.active).to eq true
    end
  end

  describe ".clean_previous_images" do
    before do
      create(:header_image)
    end
    it 'sets the active flag for all previous images to false' do
      HeaderImage.clean_previous_images

      expect(HeaderImage.last.active).to eq false
    end
  end
end
