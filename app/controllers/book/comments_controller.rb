class Book::CommentsController < ApplicationController

  def create
    @resource = find_resource
    @resource.comments.build(comments_params.merge(:ip_address => request.ip))
    if @resource.save
      #redirect_to book_review_path(@resource), notice: "Comment added"
      redirect_to polymorphic_url(@resource), notice: "Comment added"
    else
      render 'book/reviews/show'
    end
  end

  def show

  end

  def destroy
    @resource = find_resource
    @resource.comments.find(params[:id]).first.destroy
  end

  private
    def comments_params
      params.require(:comment).permit(:email, :comment)
    end

    def find_resource
      params.each do |name, value|
        if name =~ /(.+)_id$/
          @resource_name = $1
          return "Book::#{$1.classify}".constantize.find(value)
        end
      end
      nil
    end
end
