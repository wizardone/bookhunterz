class Book::NewsController < ApplicationController
  respond_to :html

  def new
  end

  def create
    @news = Book::News.new(news_params)
    @news.image = news_params[:image]
    if @news.save
      redirect_to book_news_index_path, notice: "News saved succesfully"
    else
      render :new
    end
  end

  def update
    @news = Book::News.find(params[:id])
    if @news.update_attributes(news_params)
      redirect_to book_news_path(@news), notice: "News edited successfully"
    else
      render :update
    end
  end

  def show
    @news = Book::News.find(params[:id])
  end

  def edit
    @news = Book::News.find(params[:id])
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
