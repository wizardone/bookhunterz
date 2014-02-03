class Book::CommentsController < ApplicationController

  def create
    resource = Book::Review.find(params[:review_id])
    resource.comments.build(comments_params)
    if resource.save
      redirect_to book_review_path(resource), notice: "Comment added"
    else
      render 'review/show'
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
