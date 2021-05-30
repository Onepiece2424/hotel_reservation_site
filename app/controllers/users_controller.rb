class UsersController < ApplicationController
  # before_action :sign_in_required, only: [:new,:create]
  # before_action :authenticate_user!, only: [:show,:edit]
  
  
  
  def index
    @users = User
    flash[:notice] = "ログイン済ユーザーのみ記事の詳細を確認できます" unless user_signed_in?
  end
  
  def new
    @user = User.new
  end
 
  def create
    @user = User.new(params.require(:user).permit(:password, :email, :password_confirmation))
      if @user.save
        redirect_to :users
      else
        render "new"
      end
  end
 
  def show
    # @user = User.find(params[:id])
    # @user = current_user
    @user = User.find(params[:id]) #追記
  end
 
  def edit
    
  end
 
  def update
  end
 
  def destroy
  end
  
  private
  
  def sign_in_required
    @user = User.find(params[:id])
  end
    
  def profile
    @user = current_user
  end
  
  def account
    @user = current_user
  end
end
