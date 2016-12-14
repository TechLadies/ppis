class Admin::VolunteerEventsController < Admin::BaseController

  def pending
    @event = find_event
    @pending_volunteer_events = @event.volunteer_events.registered
    @invited_volunteer_events = @event.volunteer_events.invited
  end

  def approve
    @event = find_event
    @volunteer_event = find_volunteer_event
    @volunteer_event.approve!
    redirect_to admin_event_path(@event)
  end

  def decline
    @event = find_event
    @volunteer_event = find_volunteer_event
    @volunteer_event.decline!
    redirect_to admin_event_path(@event)
  end

  private

  def find_event
    Event.find(params[:event_id])
  end

  def find_volunteer_event
    @event.volunteer_events.find(params[:id])
  end

end