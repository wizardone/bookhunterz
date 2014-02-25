class Book::CommentsController < ApplicationController

  attr_reader :resource_name

  def create
    @resource = find_resource
    @resource.comments.build(comments_params.merge(:ip_address => get_user_ip))
    if @resource.save
      redirect_to polymorphic_url(@resource), notice: "Comment added"
    else
      render 'book/reviews/show'
    end
  end

  def show
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to book_review_path(params[:review_id]), notice: 'Коментарът биде изтрит'
  end

  private
    def comments_params
      params.require(:comment).permit(:email, :comment)
    end

    def find_resource
      params.each do |name, value|
        if name =~ /(.+)_id$/
          @resource_name = $1
          return search_criteria(value)
        end
      end
      nil
    end

    def search_criteria(value)
      if @resource_name == 'news'
        criteria = { title: value }
      else
        criteria = { book_name: value }
      end
      pp "Book::#{@resource_name.classify}".constantize.find_by(criteria)
      "Book::#{@resource_name.classify}".constantize.find_by(criteria)
    end

    def get_user_ip
      return request.env['HTTP_X_FORWARDED_FOR'].split(/,/).try(:first) if request.env['HTTP_X_FORWARDED_FOR'].present?
      return request.ip
    end
end
