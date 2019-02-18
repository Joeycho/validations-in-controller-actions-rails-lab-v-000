class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
      @post=Post.new(post_params)
    if @post.valid?
      @post.update(post_params)
      binding.pry
      redirect_to post_path(n_post)
    else
      render :show
    end

  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
