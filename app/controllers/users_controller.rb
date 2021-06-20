class UsersController < ApplicationController
  
  # before_action :authenticate_user!, only: [:show,:new]
  
  def index
    @users = User.all
    # flash[:notice] = "ログイン済ユーザーのみ記事の詳細を確認できます" unless user_signed_in?
  end
  
  def new
    @user = User.new
  end
 
  def create
    @user = User.new(params.require(:user).permit(:name, :password, :email, :introduction, :icon, :avatar))
      if @user.save
        redirect_to :projects
      else
        render "new"
      end
  end
 
  def show
    # @user = current_user
  end
 
  def edit
    
  end
 
  def update
  end
 
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "ユーザーを削除しました"
    redirect_to :users
  end
  
  private
  
  def sign_in_required
    @user = User.find(params[:id])
  end
    
  def profile
    # @user = current_user
  end
  
  def account
    # @user = current_user
  end
end
