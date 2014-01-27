class Book::NewsController < ApplicationController
  respond_to :html

  def new
  end

  def create
    @news = Book::News.new(news_params)
    @news.image = news_params[:image]
    #@news.save!
    #respond_with @news
    if @news.save
      redirect_to news_index_path, notice: "News saved succesfully"
    else
      render :new
    end
  end

  def show
  end

  def new
    @news = Book::News.new
  end

  def index
    @news = Book::News.all
  end

  private
    def news_params
      params.require(:book_news).permit(:title, :text, :image)
    end
end
