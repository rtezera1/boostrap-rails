class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_blog
    @_blog ||= session[:blog_id] && 
    Blog.find_by(id: session[:blog_id])
  end
end
