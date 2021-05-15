class UsersController < ApplicationController
  
  before_action :set_q, only: [:index, :search]
  
  def index
    @users = User.all
    @posts = Post.all
    # @projects = Project.all
  end
  
  def search
    @results = @q.result
  end

  def new
    @user = User.new
  end
 
  def create
    @user = User.new(params.require(:user).permit(:name, :email, :age, :introduction))
      if @user.save
        redirect_to :users
      else
        render "new"
      end
  end
 
  def show
    @user = User.find(params[:id])
  end
 
  def edit
    
  end
 
  def update
  end
 
  def destroy
  end
  
  private

  def set_q
    @q = User.ransack(params[:q])
  end
end
