class UnivsController < ApplicationController
  before_action :set_univ, only: %i[ show edit update destroy ]

  # GET /univs or /univs.json
  def index
    @univs = Univ.all
  end

  # GET /univs/1 or /univs/1.json
  def show
  end

  # GET /univs/new
  def new
    @univ = Univ.new
  end

  # GET /univs/1/edit
  def edit
  end

  # POST /univs or /univs.json
  def create
    @univ = Univ.new(univ_params)

    respond_to do |format|
      if @univ.save
        format.html { redirect_to univ_url(@univ), notice: "Univ was successfully created." }
        format.json { render :show, status: :created, location: @univ }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @univ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /univs/1 or /univs/1.json
  def update
    respond_to do |format|
      if @univ.update(univ_params)
        format.html { redirect_to univ_url(@univ), notice: "Univ was successfully updated." }
        format.json { render :show, status: :ok, location: @univ }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @univ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /univs/1 or /univs/1.json
  def destroy
    @univ.destroy

    respond_to do |format|
      format.html { redirect_to univs_url, notice: "Univ was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_univ
      @univ = Univ.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def univ_params
      params.require(:univ).permit(:name, :address, :website, :country, :city)
    end
end
