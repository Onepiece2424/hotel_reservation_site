class ProjectsController < ApplicationController
  

  before_action :set_q, only: [:index, :search]
 
  def index
    @projects = Project.all
  end

  def search
    @results = @q.result
  end
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def set_q
    @q = Project.ransack(params[:q])
    
  end
end
