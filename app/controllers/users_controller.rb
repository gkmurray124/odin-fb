class UsersController < ApplicationController
  def show
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = current_user
    end
  end

  def posts
    @user = User.find(params[:user_id])
    @posts = Post.where(poster: @user).order(created_at: desc)
end
