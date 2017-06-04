class Admin::VolunteerPresenter

  attr_accessor :volunteer

  def initialize(volunteer)
    @volunteer = VolunteerDecorator.new(volunteer)
  end

  def invited_events
    future_events.invited
  end

  def registered_events
    future_events.registered
  end

  def approved_events
    future_events.approved
  end

  def attended_events
    past_events.attended
  end

  def no_show_events
    past_events.where(state: [:approved, :no_show])
  end

  def cancelled_events
    past_events.where(state: [:declined, :cancelled])
  end

  private

  def future_events
    @future_events ||= events.where('events.date >= ?', Date.current)
  end

  def past_events
    @past_events ||= events.where('events.date <= ?', Date.current)
  end

  def events
    @events ||= volunteer.volunteer_events.eager_load(:event)
  end

end
