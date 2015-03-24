class CommentsController < ApplicationController
  def new
    @blog = current_blog
    @comment = Comment.new
  end 

  def create 
    @blog = current_blog
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_path
      flash[:notice] = 'Thanks'
    else 
      flash[:notice] = 'Try Again'
      redirect_to root_path
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :opinion).merge(blog_id: @blog.id)
  end
end
