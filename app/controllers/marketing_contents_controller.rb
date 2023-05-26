class MarketingContentsController < ApplicationController
  before_action :set_marketing_content, only: %i[ show edit update destroy ]

  # GET /marketing_contents or /marketing_contents.json
  def index
    @marketing_contents = MarketingContent.all
  end

  # GET /marketing_contents/1 or /marketing_contents/1.json
  def show
  end

  # GET /marketing_contents/new
  def new
    @marketing_content = MarketingContent.new
  end

  # GET /marketing_contents/1/edit
  def edit
  end

  # POST /marketing_contents or /marketing_contents.json
  def create
    @marketing_content = MarketingContent.new(marketing_content_params)

    respond_to do |format|
      if @marketing_content.save
        format.html { redirect_to marketing_content_url(@marketing_content), notice: "Marketing content was successfully created." }
        format.json { render :show, status: :created, location: @marketing_content }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @marketing_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marketing_contents/1 or /marketing_contents/1.json
  def update
    respond_to do |format|
      if @marketing_content.update(marketing_content_params)
        format.html { redirect_to marketing_content_url(@marketing_content), notice: "Marketing content was successfully updated." }
        format.json { render :show, status: :ok, location: @marketing_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @marketing_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marketing_contents/1 or /marketing_contents/1.json
  def destroy
    @marketing_content.destroy

    respond_to do |format|
      format.html { redirect_to marketing_contents_url, notice: "Marketing content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marketing_content
      @marketing_content = MarketingContent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marketing_content_params
      params.require(:marketing_content).permit(:Marcom_ID, :Content_Name, :Description, :File, :Social_Networking_Platform, :Deadline, :Person_in_Charge, :Note)
    end
end
