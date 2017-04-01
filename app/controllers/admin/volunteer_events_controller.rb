class Admin::VolunteerEventsController < Admin::BaseController

  layout false

  before_action :prepare_event

  def index
    # TODO: make this one SQL
    @volunteers = @event.center.volunteers.where.not(id: @event.volunteers)
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

  def attended
    @volunteer_event = find_volunteer_event
    if params[:attend] == '1'
      @volunteer_event.attend!
    else
      @volunteer_event.absent!
    end
    redirect_to admin_event_path(@event)
  end

  def invite
    @volunteer = find_volunteer
    @volunteer_event = @event.volunteer_events.create(volunteer: @volunteer)
    @volunteer_event.invite!
    NewEventMailer.invite_volunteer(@event, @volunteer).deliver
    redirect_to admin_event_path(@event)
  end


  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to [:admin, @event]
    else
      render :new
    end
  end

  def approve
    @event = find_event
    @volunteer_event = find_volunteer_event
    @volunteer_event.approve!
  end

  def decline
    @event = find_event
    @volunteer_event = find_volunteer_event
    @volunteer_event.decline!
  end

  private

  def prepare_event
    @event = Event.find(params[:event_id])
  end

  def find_volunteer
    Volunteer.find(params[:id])
  end

  def find_volunteer_event
    @event.volunteer_events.find(params[:id])
  end

end
