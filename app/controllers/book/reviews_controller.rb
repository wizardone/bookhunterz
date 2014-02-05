class Book::ReviewsController < ApplicationController
  respond_to :html

  def create
    @review = Book::Review.new(reviews_params)
    @review.image = reviews_params[:image]
    if @review.save
      redirect_to book_reviews_path, notice: "Review saved succesfully"
    else
      render :new
    end
  end

  def update
    @review = Book::Review.find(params[:id])
    if @review.update_attributes(reviews_params)
      redirect_to book_review_path(@review), notice: "Review edited successfully"
    else
      render :update
    end
  end

  def edit
    @review = Book::Review.find(params[:id])
  end

  def show
    @resource = Book::Review.find(params[:id])
    @comments = @resource.comments
  end

  def new
    @review = Book::Review.new
  end

  def index
    @reviews = Book::Review.all
  end

  private
    def reviews_params
      params.require(:book_review).permit(:book_name, :review, :image, :score, :tag_list)
    end
end
