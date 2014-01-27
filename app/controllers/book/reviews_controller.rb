class Book::ReviewsController < ApplicationController
  respond_to :html

  def new
  end

  def create
    @review = Book::Review.new(reviews_params)
    @review.image = reviews_params[:image]
    if @review.save
      redirect_to reviews_path, notice: "Review saved succesfully"
    else
      render :new
    end
  end

  def show
  end

  def new
    @review = Book::Review.new
  end

  def index
    @reviews = Book::Review.all
  end

  private
    def reviews_params
      params.require(:book_review).permit(:book_name, :review, :image)
    end
end
