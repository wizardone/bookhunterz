class SearchController < ApplicationController

  def index
    @resource = Book::Review.search_for(params[:search].downcase)
  end

end
