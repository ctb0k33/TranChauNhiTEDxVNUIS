class EventOperationsController < ApplicationController
  before_action :set_event_operation, only: %i[ show edit update destroy ]

  # GET /event_operations or /event_operations.json
  def index
    @event_operations = EventOperation.all
  end

  # GET /event_operations/1 or /event_operations/1.json
  def show
  end

  # GET /event_operations/new
  def new
    @event_operation = EventOperation.new
  end

  # GET /event_operations/1/edit
  def edit
  end

  # POST /event_operations or /event_operations.json
  def create
    @event_operation = EventOperation.new(event_operation_params)

    respond_to do |format|
      if @event_operation.save
        format.html { redirect_to event_operation_url(@event_operation), notice: "Event operation was successfully created." }
        format.json { render :show, status: :created, location: @event_operation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_operations/1 or /event_operations/1.json
  def update
    respond_to do |format|
      if @event_operation.update(event_operation_params)
        format.html { redirect_to event_operation_url(@event_operation), notice: "Event operation was successfully updated." }
        format.json { render :show, status: :ok, location: @event_operation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_operations/1 or /event_operations/1.json
  def destroy
    @event_operation.destroy

    respond_to do |format|
      format.html { redirect_to event_operations_url, notice: "Event operation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_operation
      @event_operation = EventOperation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_operation_params
      params.require(:event_operation).permit(:Task_ID, :Task_Name, :Person_in_Charge, :Description, :Deadline, :Status, :Note)
    end
end
