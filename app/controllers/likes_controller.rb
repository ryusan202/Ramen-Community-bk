class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    @post = Post.find(params[:post_id])
    current_user.post.create(post_id: @post.id)
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    current_user.post.find_by(post_id: @post.id).destroy
    respond_to do |format|
      format.js
    end
  end
end