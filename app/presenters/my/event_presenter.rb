class My::EventPresenter

  attr_reader :event, :volunteer

  def initialize(volunteer, event)
    @event = event
    @volunteer = volunteer
  end

  def volunteer_registered?
    event.published? && event.volunteer_events.where(volunteer: volunteer).exists?
  end

  def volunteer_declined?
    event.volunteer_events.declined.where(volunteer: volunteer).exists?
  end

end
