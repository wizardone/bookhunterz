class Book::CommentsController < ApplicationController

  def create
    @review = Book::Review.find(params[:review_id])
    @review.comments.build(comments_params)
    if @review.save
      redirect_to book_review_path(resource), notice: "Comment added"
    else
      render 'book/reviews/show'
    end
  end

  def show

  end

  def destroy

  end

  private
    def comments_params
      params.require(:comment).permit(:email, :comment)
    end
end
