class UsersController < ApplicationController
  def signup

  end
  def create
    @user = User.new(name: params[:name],password:params[:password])
    @user.save
    redirect_to("/")
    # @post = User.new(password:params[:password])
    # @post.save
  end
end
