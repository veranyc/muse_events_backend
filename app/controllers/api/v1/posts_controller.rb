class Api::V1::PostsController < ApplicationController
  before_action :set_post, only: [:show,:update,:destroy]

  def index
    posts = Post.all
    render json: posts, status: 200
  end

  def create
    post = Post.create(post_params)
    render json: post, status: 201
  end

  def update
    @post.update(post_params)
    render json: @post, status: 200
  end

  def destroy
    postId = @post.id
    @post.destroy
    render json: {message: "Your post has been deleted", postId:postId}
  end

  def show
    render json: @post, status: 200
  end

  private
  def post_params
    params.permit(:event_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
