class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    render json: Post.all
  end

  def show
    render json: @post
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
