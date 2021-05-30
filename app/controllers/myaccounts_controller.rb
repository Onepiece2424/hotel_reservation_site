class MyaccountsController < ApplicationController
  before_action :set_myaccount, only: %i[ show edit update destroy ]

  # GET /myaccounts or /myaccounts.json
  def index
    @myaccounts = Myaccount.all
  end

  # GET /myaccounts/1 or /myaccounts/1.json
  def show
    @myaccounts = Myaccount.find_by(id: params[:id])
  end

  # GET /myaccounts/new
  def new
    @myaccount = Myaccount.new
  end

  # GET /myaccounts/1/edit
  def edit
  end

  # POST /myaccounts or /myaccounts.json
  def create
    @myaccount = Myaccount.new(myaccount_params)

    respond_to do |format|
      if @myaccount.save
        format.html { redirect_to @myaccount, notice: "Myaccount was successfully created." }
        format.json { render :show, status: :created, location: @myaccount }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myaccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myaccounts/1 or /myaccounts/1.json
  def update
    respond_to do |format|
      if @myaccount.update(myaccount_params)
        format.html { redirect_to @myaccount, notice: "Myaccount was successfully updated." }
        format.json { render :show, status: :ok, location: @myaccount }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myaccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myaccounts/1 or /myaccounts/1.json
  def destroy
    @myaccount.destroy
    respond_to do |format|
      format.html { redirect_to myaccounts_url, notice: "Myaccount was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myaccount
      @myaccount = Myaccount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myaccount_params
      params.require(:myaccount).permit(:icon, :introduction, :name)
    end
end
