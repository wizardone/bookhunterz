class HeaderImage < ActiveRecord::Base
  mount_uploader :image, HeaderImageUploader

  class << self
    def clean_previous_images
      where(active: true).each { |el| el.update_attributes!(active: false)}
    end
  end
end
