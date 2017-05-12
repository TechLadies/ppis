class Admin::VolunteerEventsController < Admin::BaseController

  layout false

  before_action :prepare_event
  before_action :prepare_volunteer_event, only: [:approve, :decline, :attended]

  def index
    @query = VolunteerQuery.new(current_admin, params, @event.center.volunteers.where(adhoc: true).where.not(id: @event.volunteers))
    @volunteers = @query.volunteers
  end

  def pending
    @volunteer_events = @event.volunteer_events.registered
    render :volunteer_events
  end

  def invited
    @volunteer_events = @event.volunteer_events.invited
    render :volunteer_events
  end

  def approved
    @volunteer_events = @event.volunteer_events.where(state: [:approved, :attended, :no_show])
    render :volunteer_events
  end

  def declined
    @volunteer_events = @event.volunteer_events.where(state: [:declined, :cancelled])
    render :volunteer_events
  end

  def invite
    @volunteer = Volunteer.find(params[:id])
    @volunteer_event = @event.volunteer_events.find_or_initialize_by(volunteer: @volunteer)
    new_record = @volunteer_event.new_record?
    @volunteer_event.invite!
    NewEventMailer.invite_volunteer(@event, @volunteer).deliver_later if new_record
  end

  def approve
    @volunteer = current_volunteer
    @volunteer_event.approve!
    NewEventMailer.approve_volunteer(@event, @current_volunteer).deliver_later
  end

  def decline
    @volunteer_event.decline!
  end

  def attended
    if params[:attend] == '1'
      @volunteer_event.attend!
    else
      @volunteer_event.absent!
    end
  end

  private

  def prepare_event
    @event = Event.find(params[:event_id])
  end

  def prepare_volunteer_event
    @volunteer_event = @event.volunteer_events.find(params[:id])
  end

end
