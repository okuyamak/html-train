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
      flash[:notice]="メールアドレスまたはパスワードが間違っています"
      @name = params[:name]
      redirect_to("/login")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end

  def create
    @user = User.new(name: params[:name],password:params[:password])
    @same = User.find_by(name: params[:name])
    if @same
      flash[:notice]="すでにそのユーザーネームは使用されています"
      redirect_to("/signup")
    else
      @user.save
      if @user.save
        session[:user_id] = @user.id
        redirect_to("/")
      else
        flash[:notice]="ユーザーネーム、パスワードは４文字以上です"
        redirect_to("/signup")
      end
    end


  end
end
