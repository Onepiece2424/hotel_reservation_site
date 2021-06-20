class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


   # ログイン済ユーザーのみにアクセスを許可する
    # before_action :authenticate_user!
  
  # deviseコントローラーにストロングパラメータを追加する          
  before_action :configure_permitted_parameters, if: :devise_controller?
  # private
  
  # # ログイン後、projects/indexに移動する
  def after_sign_in_path_for(resource)
    projects_index_path
  end
  
  def after_sign_out_path_for(resource)
    login_path # ログアウト後に遷移するpathを設定
  end
  
  
  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
    # アカウント編集の時にnameとprofileのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password])
  end
  
  
  #   def sign_in_required
  #     redirect_to new_user_session_url unless user_signed_in?
  #   end
end
