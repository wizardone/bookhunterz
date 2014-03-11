# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :header_image do
    active true
    image Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/files/header_logo.jpg')))
  end
end
