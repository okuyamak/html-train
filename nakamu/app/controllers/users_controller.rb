class UsersController < ApplicationController
  before_action :forbid_login_user,{only: [:signup, :login_form, :login, :create]}
  def signup
  end
  def login_form
  end

  def login
    @user = User.find_by(name: params[:name],password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/")
    else
      @error_message="メールアドレスまたはパスワードが間違っています"
      @name = params[:name]
      render("users/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end

  def create
    @user = User.new(name: params[:name],password:params[:password])
    @user.save
    if @user.save
      session[:user_id] = @user.id
    end
    redirect_to("/")
  end
end
