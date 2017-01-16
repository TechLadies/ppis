class My::VolunteerEventsController < My::BaseController

  before_action :find_event
  before_action :find_volunteer_event

  def approve
    @volunteer_event.approve!
    redirect_to my_root_path
  end

  def decline
    @volunteer_event.decline!
    redirect_to my_root_path
  end

  private

  def find_event
    @event = Event.find(params[:event_id])
  end

  def find_volunteer_event
    @volunteer_event = @event.volunteer_events.find(params[:id])
  end

end

