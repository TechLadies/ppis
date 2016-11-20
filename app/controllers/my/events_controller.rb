class My::EventsController < My::BaseController
  def new_events
    @events = Event.published.where('date > ?', Date.today)
  end
  
  def show
    @event = find_event
  end

  def register
    @event = find_event
    volunteer_event = @event.volunteer_events.create(volunteer: current_volunteer)
    volunteer_event.register!
    redirect_to my_event_path(@event)
  end

  def unregister
    @event = find_event
    volunteer_event = @event.volunteer_events.where(volunteer: current_volunteer).first
    volunteer_event.decline!
    redirect_to my_event_path(@event)
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

