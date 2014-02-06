class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :header_image, :current_user, :is_logged_in?
  before_filter :generate_tag_cloud

  include ActsAsTaggableOn::TagsHelper

  def current_user
    User.find(session[:user_id])
  end

  def generate_review_tag_cloud
    @tags = Book::Review.tag_counts
  end

  def generate_news_tag_cloud
    @tags = Book::News.tag_counts
  end

  def is_logged_in?
    session[:user_id].present?
  end

  def header_image
    'header_logo.jpg' if display_logo_actions.include? params[:action]
  end

  def display_logo_actions
    ["index", "show"]
  end
end
