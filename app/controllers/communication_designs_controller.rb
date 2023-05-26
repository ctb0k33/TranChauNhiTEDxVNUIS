class CommunicationDesignsController < ApplicationController
  before_action :set_communication_design, only: %i[ show edit update destroy ]

  # GET /communication_designs or /communication_designs.json
  def index
    @communication_designs = CommunicationDesign.all
  end

  # GET /communication_designs/1 or /communication_designs/1.json
  def show
  end

  # GET /communication_designs/new
  def new
    @communication_design = CommunicationDesign.new
  end

  # GET /communication_designs/1/edit
  def edit
  end

  # POST /communication_designs or /communication_designs.json
  def create
    @communication_design = CommunicationDesign.new(communication_design_params)

    respond_to do |format|
      if @communication_design.save
        format.html { redirect_to communication_design_url(@communication_design), notice: "Communication design was successfully created." }
        format.json { render :show, status: :created, location: @communication_design }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @communication_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communication_designs/1 or /communication_designs/1.json
  def update
    respond_to do |format|
      if @communication_design.update(communication_design_params)
        format.html { redirect_to communication_design_url(@communication_design), notice: "Communication design was successfully updated." }
        format.json { render :show, status: :ok, location: @communication_design }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @communication_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communication_designs/1 or /communication_designs/1.json
  def destroy
    @communication_design.destroy

    respond_to do |format|
      format.html { redirect_to communication_designs_url, notice: "Communication design was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_communication_design
      @communication_design = CommunicationDesign.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def communication_design_params
      params.require(:communication_design).permit(:Marcom_ID, :Task_Name, :Description, :File, :Deadline, :Person_in_Charge, :Note)
    end
end
