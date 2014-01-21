class Book::ReviewsController < ApplicationController
  respond_to :html

  def new
  end

  def create
    @review = Book::Review.new(news_params)
    @review.image = news_params[:image]
    #@news.save!
    #respond_with @news
    if @review.valid?
      redirect_to news_index_path, notice: "Review saved succesfully" if @review.save!
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
    def news_params
      params.require(:book_review).permit(:title, :text, :image)
    end
end
