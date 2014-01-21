class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :header_image

  def header_image
    'header_logo.jpg' if display_logo_actions.include? params[:action]
  end

  def display_logo_actions
    ["index", "show"]
  end
end
