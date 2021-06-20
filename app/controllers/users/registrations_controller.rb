# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
 
  def create
    @user = User.new(params.require(:user).permit(:name, :password, :email, :password_confirmation, :introduction, :icon, :avatar))
      if @user.save
        redirect_to :users
      else
        render "new"
      end
  end
  
  
  protected
  
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
  
  # アカウント編集後、プロフィール画面に移動する
  def after_update_path_for(resource)
    login_path(id: current_user.id)
  end
  
  
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
