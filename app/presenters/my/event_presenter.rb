class My::EventPresenter

  attr_reader :event, :volunteer

  def initialize(volunteer, event)
    @event = event
    @volunteer = volunteer
  end

  def volunteer_registered_before?
    event.published? &&
      event.volunteer_events.where(volunteer: volunteer).exists?
  end

  def volunteer_registered?
    event.published? &&
      event.volunteer_events
        .where(state: [:approved, :registered])
        .where(volunteer: volunteer)
        .exists?
  end

  def volunteer_cancelled?
    event.volunteer_events.cancelled.where(volunteer: volunteer).exists?
  end

end
