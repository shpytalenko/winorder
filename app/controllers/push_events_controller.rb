class PushEventsController < ApplicationController
  before_action :set_push_event, only: [:show, :edit, :update, :destroy]

  
  
  def pipedrive_endpoint
    binding.pry
    PushEvent.create(:data["request"] => params.to_json) 
    head :ok, content_type: "text/html"
  end
  
  # GET /push_events
  # GET /push_events.json
  def index
    @push_events = PushEvent.all
  end

  # GET /push_events/1
  # GET /push_events/1.json
  def show
  end

  # GET /push_events/new
  def new
    @push_event = PushEvent.new
  end

  # GET /push_events/1/edit
  def edit
  end

  # POST /push_events
  # POST /push_events.json
  def create
    @push_event = PushEvent.new(push_event_params)

    respond_to do |format|
      if @push_event.save
        format.html { redirect_to @push_event, notice: 'Push event was successfully created.' }
        format.json { render :show, status: :created, location: @push_event }
      else
        format.html { render :new }
        format.json { render json: @push_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /push_events/1
  # PATCH/PUT /push_events/1.json
  def update
    respond_to do |format|
      if @push_event.update(push_event_params)
        format.html { redirect_to @push_event, notice: 'Push event was successfully updated.' }
        format.json { render :show, status: :ok, location: @push_event }
      else
        format.html { render :edit }
        format.json { render json: @push_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /push_events/1
  # DELETE /push_events/1.json
  def destroy
    @push_event.destroy
    respond_to do |format|
      format.html { redirect_to push_events_url, notice: 'Push event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_push_event
      @push_event = PushEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def push_event_params
      params.require(:push_event).permit(:data, :body)
    end
end
