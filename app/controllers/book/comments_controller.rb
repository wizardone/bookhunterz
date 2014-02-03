class Book::CommentsController < ApplicationController

  def create
    @resource = find_resource
    @resource.comments.build(comments_params)
    if @resource.save
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

    def find_resource
      params.each do |name, value|
        if name =~ /(.+)_id$/
          return "Book::#{$1.classify}".constantize.find(value)
        end
      end
      nil
    end
end
