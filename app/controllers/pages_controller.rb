class PagesController < ApplicationController

  def index
    @reviews = Book::Review.all
  end
end
