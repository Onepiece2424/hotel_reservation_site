class ProjectsController < ApplicationController
  # before_action :set_project, only: %i[ show edit update destroy ]
  before_action :set_q, only: [:index, :search]
  # GET /projects or /projects.json
  def index
    @projects = Project.all
  end

  def search
    @results = @q.result
  end

  # GET /projects/1 or /projects/1.json
  
  # GET /projects/new
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
  # GET /projects/1/edit
  def edit
  end


  # POST /projects or /projects.json
  

  # PATCH/PUT /projects/1 or /projects/1.json
  def update
    # respond_to do |format|
    #   if @project.update(project_params)
    #     format.html { redirect_to @project, notice: "Project was successfully updated." }
    #     format.json { render :show, status: :ok, location: @project }
    #   else
    #     format.html { render :edit, status: :unprocessable_entity }
    #     format.json { render json: @project.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /projects/1 or /projects/1.json
  def destroy
    # @project.destroy
    # respond_to do |format|
    #   format.html { redirect_to projects_url, notice: "Project was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  private
  
  def set_q
    @q = Project.ransack(params[:q])
    
  end
  
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_project
  #     @project = Project.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def project_params
  #     params.require(:project).permit(:name)
  #   end
end
