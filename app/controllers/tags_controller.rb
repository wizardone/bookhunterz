class TagsController < ApplicationController

  def index
    @search_tag = params[:tag] || nil
    @reviews_by_tags = Book::Review.tagged_with(params[:tag])
  end

end
