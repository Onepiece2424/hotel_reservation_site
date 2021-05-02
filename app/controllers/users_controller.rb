class UsersController < ApplicationController
  
  def index
    @users = User.all #allメソッドはusersテーブルのレコードを全て取得できるメソッド
  end
  
  def new
    @user = User.new
  end
 
  def create
  end
 
  def show
  end
 
  def edit
  end
 
  def update
  end
 
  def destroy
  end
end
