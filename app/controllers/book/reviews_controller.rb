class Book::ReviewsController < ApplicationController
  respond_to :html

  def create
    @review = Book::Review.new(reviews_params)
    @review.image = reviews_params[:image]
    @review.user = current_user
    if @review.save
      redirect_to book_reviews_path, notice: "Review saved succesfully"
    else
      render :new
    end
  end

  def update
    @review = Book::Review.find_by(book_name: params[:id])
    if @review.update_attributes(reviews_params)
      redirect_to book_review_path(@review), notice: "Review edited successfully"
    else
      render :update
    end
  end

  def edit
    @review = Book::Review.find_by(book_name: params[:id])
    pp @review.score.to_i
  end

  def show
    @resource = Book::Review.find_by(book_name: params[:id])
    @comments = @resource.comments if @resource.present?
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
