class My::EventsController < My::BaseController
  def upcoming_events
    @events = Event.all
  end
end
