class HeaderImagesController < ApplicationController
  before_filter :clean_images, only: [:create]

  def new
    @header_image = HeaderImage.new
  end

  def index
    @header_images = HeaderImage.all
  end

  def create
    @header_image = HeaderImage.new(header_images_params.merge(active: true))
    if @header_image.save
      redirect_to root_path, notice: "Картинката е добавена"
    else
      render :new
    end
  end

  private
    def header_images_params
      params.require(:header_image).permit(:image)
    end

    def clean_images
      HeaderImage.clean_previous_images
    end
end
