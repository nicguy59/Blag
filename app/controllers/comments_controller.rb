class CommentsController < ApplicationController

  # this one shows the form
  def new
    post =Post.find(params[:post_id])
    @comment = post.comments.new  
  end

  # this one creates the record and redirects
  def create
    post =Post.find(params[:post_id])
    comment = post.comments.create()
    if comment.save
      redirect_to root_path
    end    
  end
end
