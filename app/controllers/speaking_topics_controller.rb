class SpeakingTopicsController < ApplicationController
  before_action :set_speaking_topic, only: %i[ show edit update destroy ]

  # GET /speaking_topics or /speaking_topics.json
  def index
    @speaking_topics = SpeakingTopic.all
  end

  # GET /speaking_topics/1 or /speaking_topics/1.json
  def show
  end

  # GET /speaking_topics/new
  def new
    @speaking_topic = SpeakingTopic.new
  end

  # GET /speaking_topics/1/edit
  def edit
  end

  # POST /speaking_topics or /speaking_topics.json
  def create
    @speaking_topic = SpeakingTopic.new(speaking_topic_params)

    respond_to do |format|
      if @speaking_topic.save
        format.html { redirect_to speaking_topic_url(@speaking_topic), notice: "Speaking topic was successfully created." }
        format.json { render :show, status: :created, location: @speaking_topic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @speaking_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speaking_topics/1 or /speaking_topics/1.json
  def update
    respond_to do |format|
      if @speaking_topic.update(speaking_topic_params)
        format.html { redirect_to speaking_topic_url(@speaking_topic), notice: "Speaking topic was successfully updated." }
        format.json { render :show, status: :ok, location: @speaking_topic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @speaking_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speaking_topics/1 or /speaking_topics/1.json
  def destroy
    @speaking_topic.destroy

    respond_to do |format|
      format.html { redirect_to speaking_topics_url, notice: "Speaking topic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speaking_topic
      @speaking_topic = SpeakingTopic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def speaking_topic_params
      params.require(:speaking_topic).permit(:Topic_ID, :Topic_Name, :Description, :Image_File, :Video_Url, :Workspace_Link)
    end
end
