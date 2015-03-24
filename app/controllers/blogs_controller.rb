class BlogsController < ApplicationController
  def index
    @blogs = Blog.by_recency
  end

  def show 
    @blog = Blog.find(params[:id])
    session[:blog_id] = @blog.id
    @comments = Comment.where(blog_id: @blog.id)
    @new_comment = Comment.new
  end

end
