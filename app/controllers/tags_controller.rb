class TagsController < ApplicationController

  def index
    @search_tag =  params[:tag]
    @reviews_by_tags = Book::Review.tagged_with(params[:tag]) if @search_tag
  end

end
