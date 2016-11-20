class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = find_event
  end

  private

  def find_event
    Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:center_id, :event_name, :description, :date, :start_time, :end_time, :location,
      :number_of_volunteers)
  end

end