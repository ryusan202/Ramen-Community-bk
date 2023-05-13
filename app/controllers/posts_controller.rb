class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all

    @ranking = []
    if @ranking_posts.present?
      @ranking_posts.each_with_index do |post, i|
        @ranking << { rank: i+1, title: post.title, likes_count: post.likes_count }
      end
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "Post was successfully created."
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :genre_id, :image)
  end
end
