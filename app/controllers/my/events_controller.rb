class My::EventsController < My::BaseController

  def index
    @registered_events = current_volunteer.volunteer_events.registered
    @invited_events = current_volunteer.volunteer_events.invited
    @approved_events = current_volunteer.volunteer_events.approved
  end

  def past_events
    @events = current_volunteer.volunteer_events.attended
  end

  def register
    @event = find_event
    volunteer_event = @event.volunteer_events.find_or_initialize_by(volunteer: current_volunteer)
    if volunteer_event.new_record?
      volunteer_event.register!
      NewEventMailer.register_volunteer(@event, @current_volunteer).deliver_later
    else
      volunteer_event.re_register!
      NewEventMailer.register_volunteer(@event, @current_volunteer).deliver_later
    end
    redirect_to event_path(@event)
  rescue AASM::InvalidTransition => e
    flash[:error] = 'Something went wrong, please contact the administrators.'
    redirect_to event_path(@event)
  end

  def unregister
    @event = find_event
    volunteer_event = @event.volunteer_events.where(volunteer: current_volunteer).first
    volunteer_event.cancel!
    redirect_to event_path(@event)
  rescue AASM::InvalidTransition => e
    flash[:error] = 'Something went wrong, please contact the administrators.'
    redirect_to event_path(@event)
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

