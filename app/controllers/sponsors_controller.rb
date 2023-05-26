class SponsorsController < ApplicationController
  before_action :set_sponsor, only: %i[ show edit update destroy ]

  # GET /sponsors or /sponsors.json
  def index
    @sponsors = Sponsor.all
  end

  # GET /sponsors/1 or /sponsors/1.json
  def show
  end

  # GET /sponsors/new
  def new
    @sponsor = Sponsor.new
  end

  # GET /sponsors/1/edit
  def edit
  end

  # POST /sponsors or /sponsors.json
  def create
  sponsorship_level = SponsorshipLevel.find_by(Sponsorship_Level: params[:sponsor][:sponsorship_level])
  if sponsorship_level.nil?
    flash[:error] = "Invalid sponsorship level"
    redirect_to new_sponsor_path
    return
  end
  @sponsor = Sponsor.new(sponsor_params.merge(Sponsorship_Level: sponsorship_level.Sponsorship_Level))

  respond_to do |format|
    if @sponsor.save
      format.html { redirect_to @sponsor, notice: "Sponsor was successfully created." }
      format.json { render :show, status: :created, location: @sponsor }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @sponsor.errors, status: :unprocessable_entity }
    end
  end
end



  # PATCH/PUT /sponsors/1 or /sponsors/1.json
  def update
    respond_to do |format|
      if @sponsor.update(sponsor_params)
        format.html { redirect_to sponsor_url(@sponsor), notice: "Sponsor was successfully updated." }
        format.json { render :show, status: :ok, location: @sponsor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsors/1 or /sponsors/1.json
  def destroy
    @sponsor.destroy

    respond_to do |format|
      format.html { redirect_to sponsors_url, notice: "Sponsor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsor
      @sponsor = Sponsor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sponsor_params
    params.require(:sponsor).permit(:sponsor_id, :sponsor, :contact_number, :email, :address, :sponsor_type, :sponsorship_level, :image_file, :website_link, :contract_file, :person_in_charge, :note)
    end

end
